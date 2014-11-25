#!/usr/bin/python

import sys

if len(sys.argv) < 2:
	print "Usage: generate-8queens.py <side> [h | v | d1 | d2]"
	sys.exit(1)

side = int(sys.argv[1])
if len(sys.argv) > 2:
	style = sys.argv[2]
else:
	style = None

def map_node(id):
	if style is None or style == 'h':
		return id # horizontal
	row = id / side
	col = id % side
	if style == 'v':
		return row + col * side # vertical
	assert(False)
	return 0

#		if x >= side - 1:
#	print "set-cpu(@" + str(map_node(id)) + ", " + str(y) + " % @cpus)."

for x in range(0, side):
	for y in range(0, side):
		id = x * side + y
		print "!coord(@" + str(map_node(id)) + ", " + str(x) + ", " + str(y) + ")."
		print "set-cpu(@" + str(map_node(id)) + ", partition-vertical(" + str(x) + ", " + str(y) + ", " + str(side) + ", " + str(side) + "))."
		print "set-default-priority(@" + str(map_node(id)) + ", " + str(x + 1) + ".0)."
		# generate down right
		if y >= side - 2:
			print "!down-right(@" + str(map_node(id)) + ", @" + str(map_node(id)) + ")."
		else:
			if x == side - 1:
				print "!down-right(@" + str(map_node(id)) + ", @" + str(map_node(id)) + ")."
			else:
				print "!down-right(@" + str(map_node(id)) + ", @" + str(map_node(id + side + 2)) + ")."

		# generate down left
		if y <= 1:
			print "!down-left(@" + str(map_node(id)) + ", @" + str(map_node(id)) + ")."
		else:
			if x == side - 1:
				print "!down-left(@" + str(map_node(id)) + ", @" + str(map_node(id)) + ")."
			else:
				print "!down-left(@" + str(map_node(id)) + ", @" + str(map_node(id + side - 2)) + ")."

		if y != 0:
			print "!left(@" + str(map_node(id)) + ", @" + str(map_node(id - 1)) + ")."
		else:
			print "!left(@" + str(map_node(id)) + ", @" + str(map_node(id)) + ")."
		if y != side - 1:
			print "!right(@" + str(map_node(id)) + ", @" + str(map_node(id + 1)) + ")."
		else:
			print "!right(@" + str(map_node(id)) + ", @" + str(map_node(id)) + ")."
