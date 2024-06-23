final searchFlightData = {
  "total": 17,
  "page_num": 1,
  "page_size": 100,
  "more_page": false,
  "operating_keys": [
    {"airline_name": "Singapore Airlines", "iata_code": "SQ"},
    {"airline_name": "Vietjet Aviation", "iata_code": "VJ"}
  ],
  "flights": [
    {
      "one_way_trip": [
        {
          "itinerary_id": "ee318ab5-441d-401d-81a5-f93ea23eeb46",
          "duration": "07:10:00",
          "stop": "1 stop",
          "class_info": [
            {
              "class_id": "ed753bbd-357d-403f-938b-f041e2076748",
              "class_name": "Unidentified",
              "sub_class_name": null,
              "total_price": 141.3,
              "detail_price": [
                {"passenger_type": "Adult", "price": 141.3, "count": 1}
              ],
              "baggages": [
                {"type": "CHECKIN", "number": 1, "weight": null, "unit": "N"},
                {"type": "CARRY_ON", "number": 1, "weight": null, "unit": "N"}
              ],
              "currency": "USD",
              "policy": {
                "change_fee": null,
                "cancellation_fee": null,
                "is_rescheduling": false,
                "is_refundable": false
              },
              "left_ticket": null
            }
          ],
          "segments": [
            {
              "origin": {
                "airport_code": "SGN",
                "airport_name": "Ho Chi Minh",
                "city_name": "Ho Chi Minh City"
              },
              "destination": {
                "airport_code": "PQC",
                "airport_name": "Phu Quoc Intl Airport",
                "city_name": "Phu Quoc"
              },
              "departure_at": "2024-04-27T07:30:00",
              "arrived_at": "2024-04-27T08:30:00",
              "operating": {
                "operating_id": "8b29f8d0-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "VJ",
                "operating_name": "Vietjet Aviation",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/VJ.gif",
                "operating_number": "323"
              },
              "aircraft": "323",
              "duration": "01:00:00",
              "waiting_transfer": "03:25:00",
              "marketing_company": null,
              "is_different_terminal": false,
              "is_visa_required": false
            },
            {
              "origin": {
                "airport_code": "PQC",
                "airport_name": "Phu Quoc Intl Airport",
                "city_name": "Phu Quoc"
              },
              "destination": {
                "airport_code": "HKG",
                "airport_name": "Hong Kong Int'l",
                "city_name": "Hong Kong"
              },
              "departure_at": "2024-04-27T11:55:00",
              "arrived_at": "2024-04-27T15:40:00",
              "operating": {
                "operating_id": "8b29f8d0-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "VJ",
                "operating_name": "Vietjet Aviation",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/VJ.gif",
                "operating_number": "986"
              },
              "aircraft": "986",
              "duration": "02:45:00",
              "waiting_transfer": null,
              "marketing_company": null,
              "is_different_terminal": false,
              "is_visa_required": false
            }
          ]
        }
      ],
      "return_trip": [],
      "india_domestic_return": false,
      "lcc": true
    },
    {
      "one_way_trip": [
        {
          "itinerary_id": "5e58fcdb-0797-4dd4-959a-163c2683e418",
          "duration": "09:25:00",
          "stop": "1 stop",
          "class_info": [
            {
              "class_id": "168b4d18-c214-480b-9507-e2f61a390a1c",
              "class_name": "Economy",
              "sub_class_name": null,
              "total_price": 434.17,
              "detail_price": [
                {"passenger_type": "Adult", "price": 434.17, "count": 1}
              ],
              "baggages": [
                {"type": "CHECKIN", "number": 1, "weight": 25.0, "unit": "kg"},
                {"type": "CARRY_ON", "number": 1, "weight": null, "unit": "N"}
              ],
              "currency": "USD",
              "policy": {
                "change_fee": null,
                "cancellation_fee": 150.5,
                "is_rescheduling": false,
                "is_refundable": true
              },
              "left_ticket": null
            }
          ],
          "segments": [
            {
              "origin": {
                "airport_code": "SGN",
                "airport_name": "Ho Chi Minh",
                "city_name": "Ho Chi Minh City"
              },
              "destination": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "departure_at": "2024-04-27T12:20:00",
              "arrived_at": "2024-04-27T15:30:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "177"
              },
              "aircraft": "177",
              "duration": "02:10:00",
              "waiting_transfer": "03:30:00",
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            },
            {
              "origin": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "destination": {
                "airport_code": "HKG",
                "airport_name": "Hong Kong Int'l",
                "city_name": "Hong Kong"
              },
              "departure_at": "2024-04-27T19:00:00",
              "arrived_at": "2024-04-27T22:45:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "898"
              },
              "aircraft": "898",
              "duration": "03:45:00",
              "waiting_transfer": null,
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            }
          ]
        }
      ],
      "return_trip": [],
      "india_domestic_return": false,
      "lcc": false
    },
    {
      "one_way_trip": [
        {
          "itinerary_id": "24bea74f-28c6-4d07-8846-72abb1a62d2e",
          "duration": "09:25:00",
          "stop": "1 stop",
          "class_info": [
            {
              "class_id": "eb54a78a-7051-4f6c-b754-f9310546712c",
              "class_name": "Economy",
              "sub_class_name": null,
              "total_price": 1832.89,
              "detail_price": [
                {"passenger_type": "Adult", "price": 1832.89, "count": 1}
              ],
              "baggages": [
                {"type": "CHECKIN", "number": 1, "weight": 30.0, "unit": "kg"},
                {"type": "CARRY_ON", "number": 1, "weight": null, "unit": "N"}
              ],
              "currency": "USD",
              "policy": {
                "change_fee": null,
                "cancellation_fee": null,
                "is_rescheduling": false,
                "is_refundable": true
              },
              "left_ticket": null
            }
          ],
          "segments": [
            {
              "origin": {
                "airport_code": "SGN",
                "airport_name": "Ho Chi Minh",
                "city_name": "Ho Chi Minh City"
              },
              "destination": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "departure_at": "2024-04-27T12:20:00",
              "arrived_at": "2024-04-27T15:30:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "177"
              },
              "aircraft": "177",
              "duration": "02:10:00",
              "waiting_transfer": "03:30:00",
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            },
            {
              "origin": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "destination": {
                "airport_code": "HKG",
                "airport_name": "Hong Kong Int'l",
                "city_name": "Hong Kong"
              },
              "departure_at": "2024-04-27T19:00:00",
              "arrived_at": "2024-04-27T22:45:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "898"
              },
              "aircraft": "898",
              "duration": "03:45:00",
              "waiting_transfer": null,
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            }
          ]
        }
      ],
      "return_trip": [],
      "india_domestic_return": false,
      "lcc": false
    },
    {
      "one_way_trip": [
        {
          "itinerary_id": "3c3f8533-4a0e-485b-bca8-1b9891ef17e4",
          "duration": "19:45:00",
          "stop": "1 stop",
          "class_info": [
            {
              "class_id": "e2fe6f35-77ee-44fb-96b7-cdfb0af891ac",
              "class_name": "Economy",
              "sub_class_name": null,
              "total_price": 434.17,
              "detail_price": [
                {"passenger_type": "Adult", "price": 434.17, "count": 1}
              ],
              "baggages": [
                {"type": "CHECKIN", "number": 1, "weight": 25.0, "unit": "kg"},
                {"type": "CARRY_ON", "number": 1, "weight": null, "unit": "N"}
              ],
              "currency": "USD",
              "policy": {
                "change_fee": null,
                "cancellation_fee": 150.5,
                "is_rescheduling": false,
                "is_refundable": true
              },
              "left_ticket": null
            }
          ],
          "segments": [
            {
              "origin": {
                "airport_code": "SGN",
                "airport_name": "Ho Chi Minh",
                "city_name": "Ho Chi Minh City"
              },
              "destination": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "departure_at": "2024-04-27T15:55:00",
              "arrived_at": "2024-04-27T18:55:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "183"
              },
              "aircraft": "183",
              "duration": "02:00:00",
              "waiting_transfer": "13:45:00",
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            },
            {
              "origin": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "destination": {
                "airport_code": "HKG",
                "airport_name": "Hong Kong Int'l",
                "city_name": "Hong Kong"
              },
              "departure_at": "2024-04-28T08:40:00",
              "arrived_at": "2024-04-28T12:40:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "882"
              },
              "aircraft": "882",
              "duration": "04:00:00",
              "waiting_transfer": null,
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            }
          ]
        }
      ],
      "return_trip": [],
      "india_domestic_return": false,
      "lcc": false
    },
    {
      "one_way_trip": [
        {
          "itinerary_id": "ee73015a-a108-497c-a3fe-666949572595",
          "duration": "18:25:00",
          "stop": "1 stop",
          "class_info": [
            {
              "class_id": "8d09b1aa-f7a8-48c0-aee0-b02d28377a12",
              "class_name": "Economy",
              "sub_class_name": null,
              "total_price": 434.17,
              "detail_price": [
                {"passenger_type": "Adult", "price": 434.17, "count": 1}
              ],
              "baggages": [
                {"type": "CHECKIN", "number": 1, "weight": 25.0, "unit": "kg"},
                {"type": "CARRY_ON", "number": 1, "weight": null, "unit": "N"}
              ],
              "currency": "USD",
              "policy": {
                "change_fee": null,
                "cancellation_fee": 150.5,
                "is_rescheduling": false,
                "is_refundable": true
              },
              "left_ticket": null
            }
          ],
          "segments": [
            {
              "origin": {
                "airport_code": "SGN",
                "airport_name": "Ho Chi Minh",
                "city_name": "Ho Chi Minh City"
              },
              "destination": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "departure_at": "2024-04-27T15:55:00",
              "arrived_at": "2024-04-27T18:55:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "183"
              },
              "aircraft": "183",
              "duration": "02:00:00",
              "waiting_transfer": "12:30:00",
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            },
            {
              "origin": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "destination": {
                "airport_code": "HKG",
                "airport_name": "Hong Kong Int'l",
                "city_name": "Hong Kong"
              },
              "departure_at": "2024-04-28T07:25:00",
              "arrived_at": "2024-04-28T11:20:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "874"
              },
              "aircraft": "874",
              "duration": "03:55:00",
              "waiting_transfer": null,
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            }
          ]
        }
      ],
      "return_trip": [],
      "india_domestic_return": false,
      "lcc": false
    },
    {
      "one_way_trip": [
        {
          "itinerary_id": "1ff1c497-d9f6-48f1-8827-cfe0afa568fb",
          "duration": "21:00:00",
          "stop": "1 stop",
          "class_info": [
            {
              "class_id": "05b7d52f-ab91-40db-b9dc-e1bf336386dd",
              "class_name": "Economy",
              "sub_class_name": null,
              "total_price": 434.17,
              "detail_price": [
                {"passenger_type": "Adult", "price": 434.17, "count": 1}
              ],
              "baggages": [
                {"type": "CHECKIN", "number": 1, "weight": 25.0, "unit": "kg"},
                {"type": "CARRY_ON", "number": 1, "weight": null, "unit": "N"}
              ],
              "currency": "USD",
              "policy": {
                "change_fee": null,
                "cancellation_fee": 150.5,
                "is_rescheduling": false,
                "is_refundable": true
              },
              "left_ticket": null
            }
          ],
          "segments": [
            {
              "origin": {
                "airport_code": "SGN",
                "airport_name": "Ho Chi Minh",
                "city_name": "Ho Chi Minh City"
              },
              "destination": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "departure_at": "2024-04-27T15:55:00",
              "arrived_at": "2024-04-27T18:55:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "183"
              },
              "aircraft": "183",
              "duration": "02:00:00",
              "waiting_transfer": "14:45:00",
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            },
            {
              "origin": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "destination": {
                "airport_code": "HKG",
                "airport_name": "Hong Kong Int'l",
                "city_name": "Hong Kong"
              },
              "departure_at": "2024-04-28T09:40:00",
              "arrived_at": "2024-04-28T13:55:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "892"
              },
              "aircraft": "892",
              "duration": "04:15:00",
              "waiting_transfer": null,
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            }
          ]
        }
      ],
      "return_trip": [],
      "india_domestic_return": false,
      "lcc": false
    },
    {
      "one_way_trip": [
        {
          "itinerary_id": "5d556224-f080-4cdf-b4e7-070be77fbf14",
          "duration": "18:25:00",
          "stop": "1 stop",
          "class_info": [
            {
              "class_id": "f3866fa7-a993-4f97-b928-f6f1f3842335",
              "class_name": "Economy",
              "sub_class_name": null,
              "total_price": 1832.89,
              "detail_price": [
                {"passenger_type": "Adult", "price": 1832.89, "count": 1}
              ],
              "baggages": [
                {"type": "CHECKIN", "number": 1, "weight": 30.0, "unit": "kg"},
                {"type": "CARRY_ON", "number": 1, "weight": null, "unit": "N"}
              ],
              "currency": "USD",
              "policy": {
                "change_fee": null,
                "cancellation_fee": null,
                "is_rescheduling": false,
                "is_refundable": true
              },
              "left_ticket": null
            }
          ],
          "segments": [
            {
              "origin": {
                "airport_code": "SGN",
                "airport_name": "Ho Chi Minh",
                "city_name": "Ho Chi Minh City"
              },
              "destination": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "departure_at": "2024-04-27T15:55:00",
              "arrived_at": "2024-04-27T18:55:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "183"
              },
              "aircraft": "183",
              "duration": "02:00:00",
              "waiting_transfer": "12:30:00",
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            },
            {
              "origin": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "destination": {
                "airport_code": "HKG",
                "airport_name": "Hong Kong Int'l",
                "city_name": "Hong Kong"
              },
              "departure_at": "2024-04-28T07:25:00",
              "arrived_at": "2024-04-28T11:20:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "874"
              },
              "aircraft": "874",
              "duration": "03:55:00",
              "waiting_transfer": null,
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            }
          ]
        }
      ],
      "return_trip": [],
      "india_domestic_return": false,
      "lcc": false
    },
    {
      "one_way_trip": [
        {
          "itinerary_id": "5f478132-e462-4330-b0f0-378619116802",
          "duration": "19:45:00",
          "stop": "1 stop",
          "class_info": [
            {
              "class_id": "f969563c-f780-45d8-a9e7-14766d54396a",
              "class_name": "Economy",
              "sub_class_name": null,
              "total_price": 1832.89,
              "detail_price": [
                {"passenger_type": "Adult", "price": 1832.89, "count": 1}
              ],
              "baggages": [
                {"type": "CHECKIN", "number": 1, "weight": 30.0, "unit": "kg"},
                {"type": "CARRY_ON", "number": 1, "weight": null, "unit": "N"}
              ],
              "currency": "USD",
              "policy": {
                "change_fee": null,
                "cancellation_fee": null,
                "is_rescheduling": false,
                "is_refundable": true
              },
              "left_ticket": null
            }
          ],
          "segments": [
            {
              "origin": {
                "airport_code": "SGN",
                "airport_name": "Ho Chi Minh",
                "city_name": "Ho Chi Minh City"
              },
              "destination": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "departure_at": "2024-04-27T15:55:00",
              "arrived_at": "2024-04-27T18:55:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "183"
              },
              "aircraft": "183",
              "duration": "02:00:00",
              "waiting_transfer": "13:45:00",
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            },
            {
              "origin": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "destination": {
                "airport_code": "HKG",
                "airport_name": "Hong Kong Int'l",
                "city_name": "Hong Kong"
              },
              "departure_at": "2024-04-28T08:40:00",
              "arrived_at": "2024-04-28T12:40:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "882"
              },
              "aircraft": "882",
              "duration": "04:00:00",
              "waiting_transfer": null,
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            }
          ]
        }
      ],
      "return_trip": [],
      "india_domestic_return": false,
      "lcc": false
    },
    {
      "one_way_trip": [
        {
          "itinerary_id": "3af4095a-84ca-4e9f-bcdd-b53a1091d0c3",
          "duration": "21:00:00",
          "stop": "1 stop",
          "class_info": [
            {
              "class_id": "627196d8-79cb-45f7-a087-a0d92feabe48",
              "class_name": "Economy",
              "sub_class_name": null,
              "total_price": 1832.89,
              "detail_price": [
                {"passenger_type": "Adult", "price": 1832.89, "count": 1}
              ],
              "baggages": [
                {"type": "CHECKIN", "number": 1, "weight": 30.0, "unit": "kg"},
                {"type": "CARRY_ON", "number": 1, "weight": null, "unit": "N"}
              ],
              "currency": "USD",
              "policy": {
                "change_fee": null,
                "cancellation_fee": null,
                "is_rescheduling": false,
                "is_refundable": true
              },
              "left_ticket": null
            }
          ],
          "segments": [
            {
              "origin": {
                "airport_code": "SGN",
                "airport_name": "Ho Chi Minh",
                "city_name": "Ho Chi Minh City"
              },
              "destination": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "departure_at": "2024-04-27T15:55:00",
              "arrived_at": "2024-04-27T18:55:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "183"
              },
              "aircraft": "183",
              "duration": "02:00:00",
              "waiting_transfer": "14:45:00",
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            },
            {
              "origin": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "destination": {
                "airport_code": "HKG",
                "airport_name": "Hong Kong Int'l",
                "city_name": "Hong Kong"
              },
              "departure_at": "2024-04-28T09:40:00",
              "arrived_at": "2024-04-28T13:55:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "892"
              },
              "aircraft": "892",
              "duration": "04:15:00",
              "waiting_transfer": null,
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            }
          ]
        }
      ],
      "return_trip": [],
      "india_domestic_return": false,
      "lcc": false
    },
    {
      "one_way_trip": [
        {
          "itinerary_id": "e4931f01-5fec-46f3-b99a-d86e86418f5b",
          "duration": "20:25:00",
          "stop": "1 stop",
          "class_info": [
            {
              "class_id": "efe77da2-ed63-45e8-88ca-fe93abf5b213",
              "class_name": "Economy",
              "sub_class_name": null,
              "total_price": 434.17,
              "detail_price": [
                {"passenger_type": "Adult", "price": 434.17, "count": 1}
              ],
              "baggages": [
                {"type": "CHECKIN", "number": 1, "weight": 25.0, "unit": "kg"},
                {"type": "CARRY_ON", "number": 1, "weight": null, "unit": "N"}
              ],
              "currency": "USD",
              "policy": {
                "change_fee": null,
                "cancellation_fee": 150.5,
                "is_rescheduling": false,
                "is_refundable": true
              },
              "left_ticket": null
            }
          ],
          "segments": [
            {
              "origin": {
                "airport_code": "SGN",
                "airport_name": "Ho Chi Minh",
                "city_name": "Ho Chi Minh City"
              },
              "destination": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "departure_at": "2024-04-27T19:40:00",
              "arrived_at": "2024-04-27T22:40:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "185"
              },
              "aircraft": "185",
              "duration": "02:00:00",
              "waiting_transfer": "14:25:00",
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            },
            {
              "origin": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "destination": {
                "airport_code": "HKG",
                "airport_name": "Hong Kong Int'l",
                "city_name": "Hong Kong"
              },
              "departure_at": "2024-04-28T13:05:00",
              "arrived_at": "2024-04-28T17:05:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "894"
              },
              "aircraft": "894",
              "duration": "04:00:00",
              "waiting_transfer": null,
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            }
          ]
        }
      ],
      "return_trip": [],
      "india_domestic_return": false,
      "lcc": false
    },
    {
      "one_way_trip": [
        {
          "itinerary_id": "553a60ff-3e56-4732-b8ff-d0395e701b86",
          "duration": "16:00:00",
          "stop": "1 stop",
          "class_info": [
            {
              "class_id": "ff50c4d3-c60d-486b-961a-0c1b5b06176d",
              "class_name": "Economy",
              "sub_class_name": null,
              "total_price": 434.17,
              "detail_price": [
                {"passenger_type": "Adult", "price": 434.17, "count": 1}
              ],
              "baggages": [
                {"type": "CHECKIN", "number": 1, "weight": 25.0, "unit": "kg"},
                {"type": "CARRY_ON", "number": 1, "weight": null, "unit": "N"}
              ],
              "currency": "USD",
              "policy": {
                "change_fee": null,
                "cancellation_fee": 150.5,
                "is_rescheduling": false,
                "is_refundable": true
              },
              "left_ticket": null
            }
          ],
          "segments": [
            {
              "origin": {
                "airport_code": "SGN",
                "airport_name": "Ho Chi Minh",
                "city_name": "Ho Chi Minh City"
              },
              "destination": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "departure_at": "2024-04-27T19:40:00",
              "arrived_at": "2024-04-27T22:40:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "185"
              },
              "aircraft": "185",
              "duration": "02:00:00",
              "waiting_transfer": "10:00:00",
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            },
            {
              "origin": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "destination": {
                "airport_code": "HKG",
                "airport_name": "Hong Kong Int'l",
                "city_name": "Hong Kong"
              },
              "departure_at": "2024-04-28T08:40:00",
              "arrived_at": "2024-04-28T12:40:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "882"
              },
              "aircraft": "882",
              "duration": "04:00:00",
              "waiting_transfer": null,
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            }
          ]
        }
      ],
      "return_trip": [],
      "india_domestic_return": false,
      "lcc": false
    },
    {
      "one_way_trip": [
        {
          "itinerary_id": "9030cdd6-f714-45ca-92b1-4e00a9958652",
          "duration": "14:40:00",
          "stop": "1 stop",
          "class_info": [
            {
              "class_id": "4aded6f2-07f7-4f83-a1de-546950cfbad2",
              "class_name": "Economy",
              "sub_class_name": null,
              "total_price": 434.17,
              "detail_price": [
                {"passenger_type": "Adult", "price": 434.17, "count": 1}
              ],
              "baggages": [
                {"type": "CHECKIN", "number": 1, "weight": 25.0, "unit": "kg"},
                {"type": "CARRY_ON", "number": 1, "weight": null, "unit": "N"}
              ],
              "currency": "USD",
              "policy": {
                "change_fee": null,
                "cancellation_fee": 150.5,
                "is_rescheduling": false,
                "is_refundable": true
              },
              "left_ticket": null
            }
          ],
          "segments": [
            {
              "origin": {
                "airport_code": "SGN",
                "airport_name": "Ho Chi Minh",
                "city_name": "Ho Chi Minh City"
              },
              "destination": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "departure_at": "2024-04-27T19:40:00",
              "arrived_at": "2024-04-27T22:40:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "185"
              },
              "aircraft": "185",
              "duration": "02:00:00",
              "waiting_transfer": "08:45:00",
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            },
            {
              "origin": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "destination": {
                "airport_code": "HKG",
                "airport_name": "Hong Kong Int'l",
                "city_name": "Hong Kong"
              },
              "departure_at": "2024-04-28T07:25:00",
              "arrived_at": "2024-04-28T11:20:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "874"
              },
              "aircraft": "874",
              "duration": "03:55:00",
              "waiting_transfer": null,
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            }
          ]
        }
      ],
      "return_trip": [],
      "india_domestic_return": false,
      "lcc": false
    },
    {
      "one_way_trip": [
        {
          "itinerary_id": "0f89aae8-dce3-428a-bee0-efac0d9393b2",
          "duration": "17:15:00",
          "stop": "1 stop",
          "class_info": [
            {
              "class_id": "11a12af6-f9b1-49df-851f-f953bcdfa5c6",
              "class_name": "Economy",
              "sub_class_name": null,
              "total_price": 434.17,
              "detail_price": [
                {"passenger_type": "Adult", "price": 434.17, "count": 1}
              ],
              "baggages": [
                {"type": "CHECKIN", "number": 1, "weight": 25.0, "unit": "kg"},
                {"type": "CARRY_ON", "number": 1, "weight": null, "unit": "N"}
              ],
              "currency": "USD",
              "policy": {
                "change_fee": null,
                "cancellation_fee": 150.5,
                "is_rescheduling": false,
                "is_refundable": true
              },
              "left_ticket": null
            }
          ],
          "segments": [
            {
              "origin": {
                "airport_code": "SGN",
                "airport_name": "Ho Chi Minh",
                "city_name": "Ho Chi Minh City"
              },
              "destination": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "departure_at": "2024-04-27T19:40:00",
              "arrived_at": "2024-04-27T22:40:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "185"
              },
              "aircraft": "185",
              "duration": "02:00:00",
              "waiting_transfer": "11:00:00",
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            },
            {
              "origin": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "destination": {
                "airport_code": "HKG",
                "airport_name": "Hong Kong Int'l",
                "city_name": "Hong Kong"
              },
              "departure_at": "2024-04-28T09:40:00",
              "arrived_at": "2024-04-28T13:55:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "892"
              },
              "aircraft": "892",
              "duration": "04:15:00",
              "waiting_transfer": null,
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            }
          ]
        }
      ],
      "return_trip": [],
      "india_domestic_return": false,
      "lcc": false
    },
    {
      "one_way_trip": [
        {
          "itinerary_id": "d524acf7-a308-4c14-aad8-1d71a19239b1",
          "duration": "20:25:00",
          "stop": "1 stop",
          "class_info": [
            {
              "class_id": "fa7333ad-cd7e-44d0-88e8-44624c7dee44",
              "class_name": "Economy",
              "sub_class_name": null,
              "total_price": 1832.89,
              "detail_price": [
                {"passenger_type": "Adult", "price": 1832.89, "count": 1}
              ],
              "baggages": [
                {"type": "CHECKIN", "number": 1, "weight": 30.0, "unit": "kg"},
                {"type": "CARRY_ON", "number": 1, "weight": null, "unit": "N"}
              ],
              "currency": "USD",
              "policy": {
                "change_fee": null,
                "cancellation_fee": null,
                "is_rescheduling": false,
                "is_refundable": true
              },
              "left_ticket": null
            }
          ],
          "segments": [
            {
              "origin": {
                "airport_code": "SGN",
                "airport_name": "Ho Chi Minh",
                "city_name": "Ho Chi Minh City"
              },
              "destination": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "departure_at": "2024-04-27T19:40:00",
              "arrived_at": "2024-04-27T22:40:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "185"
              },
              "aircraft": "185",
              "duration": "02:00:00",
              "waiting_transfer": "14:25:00",
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            },
            {
              "origin": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "destination": {
                "airport_code": "HKG",
                "airport_name": "Hong Kong Int'l",
                "city_name": "Hong Kong"
              },
              "departure_at": "2024-04-28T13:05:00",
              "arrived_at": "2024-04-28T17:05:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "894"
              },
              "aircraft": "894",
              "duration": "04:00:00",
              "waiting_transfer": null,
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            }
          ]
        }
      ],
      "return_trip": [],
      "india_domestic_return": false,
      "lcc": false
    },
    {
      "one_way_trip": [
        {
          "itinerary_id": "8fd4994e-310c-4aa9-9fec-9f62b527f057",
          "duration": "14:40:00",
          "stop": "1 stop",
          "class_info": [
            {
              "class_id": "4a94127a-de2a-4156-8090-3a1a167fdd79",
              "class_name": "Economy",
              "sub_class_name": null,
              "total_price": 1832.89,
              "detail_price": [
                {"passenger_type": "Adult", "price": 1832.89, "count": 1}
              ],
              "baggages": [
                {"type": "CHECKIN", "number": 1, "weight": 30.0, "unit": "kg"},
                {"type": "CARRY_ON", "number": 1, "weight": null, "unit": "N"}
              ],
              "currency": "USD",
              "policy": {
                "change_fee": null,
                "cancellation_fee": null,
                "is_rescheduling": false,
                "is_refundable": true
              },
              "left_ticket": null
            }
          ],
          "segments": [
            {
              "origin": {
                "airport_code": "SGN",
                "airport_name": "Ho Chi Minh",
                "city_name": "Ho Chi Minh City"
              },
              "destination": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "departure_at": "2024-04-27T19:40:00",
              "arrived_at": "2024-04-27T22:40:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "185"
              },
              "aircraft": "185",
              "duration": "02:00:00",
              "waiting_transfer": "08:45:00",
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            },
            {
              "origin": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "destination": {
                "airport_code": "HKG",
                "airport_name": "Hong Kong Int'l",
                "city_name": "Hong Kong"
              },
              "departure_at": "2024-04-28T07:25:00",
              "arrived_at": "2024-04-28T11:20:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "874"
              },
              "aircraft": "874",
              "duration": "03:55:00",
              "waiting_transfer": null,
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            }
          ]
        }
      ],
      "return_trip": [],
      "india_domestic_return": false,
      "lcc": false
    },
    {
      "one_way_trip": [
        {
          "itinerary_id": "38d8edd4-7a02-428f-ab06-f0fddaaa5e38",
          "duration": "16:00:00",
          "stop": "1 stop",
          "class_info": [
            {
              "class_id": "6b957771-5eb4-4d6b-88db-562f2b246304",
              "class_name": "Economy",
              "sub_class_name": null,
              "total_price": 1832.89,
              "detail_price": [
                {"passenger_type": "Adult", "price": 1832.89, "count": 1}
              ],
              "baggages": [
                {"type": "CHECKIN", "number": 1, "weight": 30.0, "unit": "kg"},
                {"type": "CARRY_ON", "number": 1, "weight": null, "unit": "N"}
              ],
              "currency": "USD",
              "policy": {
                "change_fee": null,
                "cancellation_fee": null,
                "is_rescheduling": false,
                "is_refundable": true
              },
              "left_ticket": null
            }
          ],
          "segments": [
            {
              "origin": {
                "airport_code": "SGN",
                "airport_name": "Ho Chi Minh",
                "city_name": "Ho Chi Minh City"
              },
              "destination": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "departure_at": "2024-04-27T19:40:00",
              "arrived_at": "2024-04-27T22:40:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "185"
              },
              "aircraft": "185",
              "duration": "02:00:00",
              "waiting_transfer": "10:00:00",
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            },
            {
              "origin": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "destination": {
                "airport_code": "HKG",
                "airport_name": "Hong Kong Int'l",
                "city_name": "Hong Kong"
              },
              "departure_at": "2024-04-28T08:40:00",
              "arrived_at": "2024-04-28T12:40:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "882"
              },
              "aircraft": "882",
              "duration": "04:00:00",
              "waiting_transfer": null,
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            }
          ]
        }
      ],
      "return_trip": [],
      "india_domestic_return": false,
      "lcc": false
    },
    {
      "one_way_trip": [
        {
          "itinerary_id": "d2ce5c53-4cc0-4c8a-bf97-542c60203793",
          "duration": "17:15:00",
          "stop": "1 stop",
          "class_info": [
            {
              "class_id": "0bd7c151-06bb-4e56-b5d3-6e2253e7ec2f",
              "class_name": "Economy",
              "sub_class_name": null,
              "total_price": 1832.89,
              "detail_price": [
                {"passenger_type": "Adult", "price": 1832.89, "count": 1}
              ],
              "baggages": [
                {"type": "CHECKIN", "number": 1, "weight": 30.0, "unit": "kg"},
                {"type": "CARRY_ON", "number": 1, "weight": null, "unit": "N"}
              ],
              "currency": "USD",
              "policy": {
                "change_fee": null,
                "cancellation_fee": null,
                "is_rescheduling": false,
                "is_refundable": true
              },
              "left_ticket": null
            }
          ],
          "segments": [
            {
              "origin": {
                "airport_code": "SGN",
                "airport_name": "Ho Chi Minh",
                "city_name": "Ho Chi Minh City"
              },
              "destination": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "departure_at": "2024-04-27T19:40:00",
              "arrived_at": "2024-04-27T22:40:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "185"
              },
              "aircraft": "185",
              "duration": "02:00:00",
              "waiting_transfer": "11:00:00",
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            },
            {
              "origin": {
                "airport_code": "SIN",
                "airport_name": "Changi",
                "city_name": "Singapore"
              },
              "destination": {
                "airport_code": "HKG",
                "airport_name": "Hong Kong Int'l",
                "city_name": "Hong Kong"
              },
              "departure_at": "2024-04-28T09:40:00",
              "arrived_at": "2024-04-28T13:55:00",
              "operating": {
                "operating_id": "8a654940-aaaa-11ee-9bea-110152ab87c4",
                "operating_code": "SQ",
                "operating_name": "Singapore Airlines",
                "operating_image_id": null,
                "operating_image_url":
                    "https://travelnext.works/api/airlines/SQ.gif",
                "operating_number": "892"
              },
              "aircraft": "892",
              "duration": "04:15:00",
              "waiting_transfer": null,
              "marketing_company": null,
              "is_different_terminal": true,
              "is_visa_required": false
            }
          ]
        }
      ],
      "return_trip": [],
      "india_domestic_return": false,
      "lcc": false
    }
  ],
  "_india_domestic_return": false,
  "is_round_trip": false,
  "is_combo_price": false
};
