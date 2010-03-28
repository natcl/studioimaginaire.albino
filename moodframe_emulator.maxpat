{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 25.0, 69.0, 1247.0, 640.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 69.0, 1247.0, 640.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"patching_rect" : [ 744.0, 212.0, 50.0, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-30",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"patching_rect" : [ 658.5, 50.0, 20.0, 140.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 1.0 ],
					"contdata" : 1,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"patching_rect" : [ 633.5, 50.0, 20.0, 140.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 1.0 ],
					"contdata" : 1,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"patching_rect" : [ 607.0, 50.0, 20.0, 140.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 1.0 ],
					"contdata" : 1,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend bgcolor",
					"numinlets" : 1,
					"patching_rect" : [ 606.0, 225.0, 97.0, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0. 0. 0.",
					"numinlets" : 3,
					"patching_rect" : [ 606.0, 198.0, 70.0, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-21",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar c1",
					"numinlets" : 1,
					"patching_rect" : [ 606.0, 251.0, 50.0, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-18",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "c16",
					"numinlets" : 1,
					"patching_rect" : [ 435.0, 434.0, 128.0, 128.0 ],
					"numoutlets" : 0,
					"id" : "obj-13",
					"presentation_rect" : [ 430.0, 444.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "c15",
					"numinlets" : 1,
					"patching_rect" : [ 307.0, 434.0, 128.0, 128.0 ],
					"numoutlets" : 0,
					"id" : "obj-14",
					"presentation_rect" : [ 302.0, 444.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "c14",
					"numinlets" : 1,
					"patching_rect" : [ 179.0, 434.0, 128.0, 128.0 ],
					"numoutlets" : 0,
					"id" : "obj-15",
					"presentation_rect" : [ 174.0, 444.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "c13",
					"numinlets" : 1,
					"patching_rect" : [ 52.0, 434.0, 128.0, 128.0 ],
					"numoutlets" : 0,
					"id" : "obj-16",
					"presentation_rect" : [ 47.0, 444.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "c12",
					"numinlets" : 1,
					"patching_rect" : [ 435.0, 306.0, 128.0, 128.0 ],
					"numoutlets" : 0,
					"id" : "obj-9",
					"presentation_rect" : [ 423.0, 343.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "c11",
					"numinlets" : 1,
					"patching_rect" : [ 307.0, 306.0, 128.0, 128.0 ],
					"numoutlets" : 0,
					"id" : "obj-10",
					"presentation_rect" : [ 295.0, 343.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "c10",
					"numinlets" : 1,
					"patching_rect" : [ 179.0, 306.0, 128.0, 128.0 ],
					"numoutlets" : 0,
					"id" : "obj-11",
					"presentation_rect" : [ 167.0, 343.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "c9",
					"numinlets" : 1,
					"patching_rect" : [ 52.0, 306.0, 128.0, 128.0 ],
					"numoutlets" : 0,
					"id" : "obj-12",
					"presentation_rect" : [ 40.0, 343.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "c8",
					"numinlets" : 1,
					"patching_rect" : [ 436.0, 178.0, 128.0, 128.0 ],
					"numoutlets" : 0,
					"id" : "obj-5",
					"presentation_rect" : [ 429.0, 177.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "c7",
					"numinlets" : 1,
					"patching_rect" : [ 308.0, 178.0, 128.0, 128.0 ],
					"numoutlets" : 0,
					"id" : "obj-6",
					"presentation_rect" : [ 301.0, 177.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "c6",
					"numinlets" : 1,
					"patching_rect" : [ 180.0, 178.0, 128.0, 128.0 ],
					"numoutlets" : 0,
					"id" : "obj-7",
					"presentation_rect" : [ 173.0, 177.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "c5",
					"numinlets" : 1,
					"patching_rect" : [ 53.0, 178.0, 128.0, 128.0 ],
					"numoutlets" : 0,
					"id" : "obj-8",
					"presentation_rect" : [ 46.0, 177.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "c4",
					"numinlets" : 1,
					"patching_rect" : [ 436.0, 50.0, 128.0, 128.0 ],
					"numoutlets" : 0,
					"id" : "obj-4",
					"presentation_rect" : [ 436.0, 50.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "c3",
					"numinlets" : 1,
					"patching_rect" : [ 308.0, 50.0, 128.0, 128.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"presentation_rect" : [ 308.0, 50.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "c2",
					"numinlets" : 1,
					"patching_rect" : [ 180.0, 50.0, 128.0, 128.0 ],
					"numoutlets" : 0,
					"id" : "obj-2",
					"presentation_rect" : [ 180.0, 50.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "c1",
					"numinlets" : 1,
					"patching_rect" : [ 53.0, 50.0, 128.0, 128.0 ],
					"numoutlets" : 0,
					"id" : "obj-1",
					"bgcolor" : [ 0.173913, 0.152174, 0.927536, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-21", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
