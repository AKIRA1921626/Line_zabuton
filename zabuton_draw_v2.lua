local M = {}

function M.draw(i, params)
    
    -- 各寄を判別する数値
    local align_num = params.align_num

    -- パラメタの展開（元の計算式を無修正で動かすための定義付け）
    local offset_x = params.offset_x
    local offset_y = params.offset_y
    local px = params.px
    local py = params.py
    local h = params.h
    local alpha = params.alpha
    -- テキスト自体のトラックバーの「サイズ」の数値
    local size = params.size 
    -- 各行のサイズ一覧を配列テーブルとして取得する関数
    -- sizes[1][1],seizes[1][2]のようになっている。
    -- 配列名:sizes, 配列要素[1][1] = w,配列要素[1][2] = h
    local sizes = params.sizes
    local total_lines = params.total_lines
    local t_cs = params.t_cs
    local t_ls = params.t_ls
    
    local px1, px2, px3, px4, px5, px6, px7, px8, px9, px10 = 
        params.pxs[1], params.pxs[2], params.pxs[3], params.pxs[4], params.pxs[5],
        params.pxs[6], params.pxs[7], params.pxs[8], params.pxs[9], params.pxs[10]
        
    local py1, py2, py3, py4, py5, py6, py7, py8, py9, py10 = 
        params.pys[1], params.pys[2], params.pys[3], params.pys[4], params.pys[5],
        params.pys[6], params.pys[7], params.pys[8], params.pys[9], params.pys[10]

    if align_num >= 3 and align_num <= 5 then
        -- 処理A:各[中]の場合
        --[[
            ["左寄せ[中]"] = 3,
            ["中央揃え[中]"] = 4,
            ["右寄せ[中]"] = 5,
        ]]
        if total_lines == 1 then
            obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 + h/2 - sizes[i][2], 0, 1, alpha/100)
        elseif total_lines == 2 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/2 + sizes[i][2], 0, 1, alpha/100)
            else
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 + h/2 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 3 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/2 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2, 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 + h/2 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 4 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/2 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/4 + sizes[i][2] + t_ls / 4, 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 + h/4 - sizes[i][2] - t_ls / 4, 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 + h/2 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines >= 5 and total_lines <= 10 then
            -- 5行目〜10行目は線形補間公式を適用する
            local px_i = params.pxs[i] or 0
            local py_i = params.pys[i] or 0
            local Y_1 = -h/2 + sizes[1][2]
            local Y_N = h/2 - sizes[total_lines][2]
            local Y_i = Y_1 + (i - 1) * (Y_N - Y_1) / (total_lines - 1)
            obj.draw(offset_x[i] + px + px_i, offset_y[i] + py + py_i + Y_i, 0, 1, alpha/100)
        end

    elseif align_num >= 0 and align_num <= 2 then
        -- 処理B:各[上]の場合
        --[[
            ["左寄せ[上]"] = 0,
            ["中央揃え[上]"] = 1,
            ["右寄せ[上]"] = 2,
        ]]
        if total_lines == 1 then
            obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - sizes[i][2], 0, 1, alpha/100)
        elseif total_lines == 2 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/2 + sizes[i][2], 0, 1, alpha/100)
            else
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 + h/2 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 3 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/3 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 + h/3 - sizes[i][2] - t_ls / 3, 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 + h/1.5 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines >= 4 and total_lines <= 10 then
            -- 4行目〜10行目は線形補間公式を適用する
            local px_i = params.pxs[i] or 0
            local py_i = params.pys[i] or 0
            local Y_1 = -h / total_lines + sizes[1][2]
            local Y_N = (total_lines - 1) * h / total_lines - sizes[total_lines][2]
            local Y_i = Y_1 + (i - 1) * (Y_N - Y_1) / (total_lines - 1)
            obj.draw(offset_x[i] + px + px_i, offset_y[i] + py + py_i + Y_i, 0, 1, alpha/100)
        end

    elseif align_num >= 6 and align_num <= 8 then
        -- 処理C:各[下]の場合
        --[[
            ["左寄せ[下]"] = 6,
            ["中央揃え[下]"] = 7,
            ["右寄せ[下]"] = 8,
        ]]
        if total_lines == 1 then
            obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 + sizes[i][2], 0, 1, alpha/100)
        elseif total_lines == 2 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/2 + sizes[i][2], 0, 1, alpha/100)
            else
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 + h/2 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 3 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 - h/1.5 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/3 + sizes[i][2] + t_ls / 3, 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 + h/3 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines >= 4 and total_lines <= 10 then
            -- 4行目〜10行目は線形補間公式を適用する
            local px_i = params.pxs[i] or 0
            local py_i = params.pys[i] or 0
            local Y_1 = -(total_lines - 1) * h / total_lines + sizes[total_lines][2]
            local Y_N = h / total_lines - sizes[1][2]
            local Y_i = Y_1 + (i - 1) * (Y_N - Y_1) / (total_lines - 1)
            obj.draw(offset_x[i] + px + px_i, offset_y[i] + py + py_i + Y_i, 0, 1, alpha/100)
        end
    end
end

return M