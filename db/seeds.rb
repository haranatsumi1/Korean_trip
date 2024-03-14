areas = [
  '江南', '明洞', '弘大', '東大門', '南大門', '梨泰院', '仁寺洞・益善洞','聖水',
  '汝矣島・永登浦', '新村・梨大', '蚕室', '景福宮・西村','北村・三清洞', '延南洞'
]

areas.each do |area_name|
  Area.find_or_create_by(name: area_name)
end
