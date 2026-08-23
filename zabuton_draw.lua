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
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/4 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 + h/4 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 + h/2 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 5 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/2 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/3.5 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3, 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 + h/3.5 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5 + h/2 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 6 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/2 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/3 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 - h/6.5 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 + h/6.5 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5 + h/3 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 6 then
                obj.draw(offset_x[i] + px + px6, offset_y[i] + py + py6 + h/2 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 7 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/2 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/2.9 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 - h/5 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 + 0, 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5 + h/5 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 6 then
                obj.draw(offset_x[i] + px + px6, offset_y[i] + py + py6 + h/2.9 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 7 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 + h/2 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 8 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/2 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/2.65 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 - h/4 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 - h/8 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5 + h/8 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 6 then
                obj.draw(offset_x[i] + px + px6, offset_y[i] + py + py6 + h/4 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 7 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 + h/2.65 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 8 then
                obj.draw(offset_x[i] + px + px8, offset_y[i] + py + py8 + h/2 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 9 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/2 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/2.5 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 - h/3.5 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 - h/6 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5, 0, 1, alpha/100)
            elseif i == 6 then
                obj.draw(offset_x[i] + px + px6, offset_y[i] + py + py6 + h/6 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 7 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 + h/3.5 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 8 then
                obj.draw(offset_x[i] + px + px8, offset_y[i] + py + py8 + h/2.5 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 9 then
                obj.draw(offset_x[i] + px + px9, offset_y[i] + py + py9 + h/2 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 10 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/2 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/2.5 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 - h/3.35 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 - h/5 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5 - h/10 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 6 then
                obj.draw(offset_x[i] + px + px6, offset_y[i] + py + py6 + h/10 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 7 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 + h/5 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 8 then
                obj.draw(offset_x[i] + px + px8, offset_y[i] + py + py8 + h/3.35 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 9 then
                obj.draw(offset_x[i] + px + px9, offset_y[i] + py + py9 + h/2.5 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 10 then
                obj.draw(offset_x[i] + px + px10, offset_y[i] + py + py10 + h/2 - sizes[i][2], 0, 1, alpha/100)
            end
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
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 + h/3 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 + h/1.5 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 4 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/4 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 + h/4 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 + h/2 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 + h/1.35 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 5 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/5 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 + h/5 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 + h/2.5 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 + h/1.7 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5 + h/1.27 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 6 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/6 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 + h/6 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 + h/3.1 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 + h/2.05 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5 + h/1.52 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 6 then
                obj.draw(offset_x[i] + px + px6, offset_y[i] + py + py6 + h/1.21 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 7 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/7 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 + h/7 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 + h/3.55 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 + h/2.35 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5 + h/1.77 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 6 then
                obj.draw(offset_x[i] + px + px6, offset_y[i] + py + py6 + h/1.41 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 7 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 + h/1.18 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 8 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/8 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 + h/8 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 + h/4 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 + h/2.7 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5 + h/2 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 6 then
                obj.draw(offset_x[i] + px + px6, offset_y[i] + py + py6 + h/1.61 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 7 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 + h/1.34 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 8 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 + h/1.15 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 9 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/9 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 + h/9 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 + h/4.5 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 + h/3.05 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5 + h/2.3 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 6 then
                obj.draw(offset_x[i] + px + px6, offset_y[i] + py + py6 + h/1.81 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 7 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 + h/1.51 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 8 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 + h/1.29 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 9 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 + h/1.13 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 10 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 - h/10 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 + h/10 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 + h/5.05 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 + h/3.35 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5 + h/2.51 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 6 then
                obj.draw(offset_x[i] + px + px6, offset_y[i] + py + py6 + h/2.01 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 7 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 + h/1.68 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 8 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 + h/1.435 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 9 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 + h/1.26 - sizes[i][2], 0, 1, alpha/100)
            elseif i == 10 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 + h/1.12 - sizes[i][2], 0, 1, alpha/100)
            end
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
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/3 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 + h/3 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 4 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 - h/1.35 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 - h/2 + sizes[i][2], 0, 1, alpha/100)   
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/4 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 + h/4 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 5 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5 - h/1.27 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 - h/1.7 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 - h/2.5 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/5 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 + h/5 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 6 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px6, offset_y[i] + py + py6 - h/1.21 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5 - h/1.52 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 - h/2.05 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 - h/3.1 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/6 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 6 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 + h/6 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 7 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 - h/1.18 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px6, offset_y[i] + py + py6 - h/1.41 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5 - h/1.77 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 - h/2.35 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 - h/3.55 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 6 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/7 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 7 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 + h/7 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 8 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px8, offset_y[i] + py + py8 - h/1.15 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 - h/1.34 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px6, offset_y[i] + py + py6 - h/1.61 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5 - h/2 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 - h/2.7 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 6 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 - h/4 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 7 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/8 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 8 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 + h/8 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 9 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px9, offset_y[i] + py + py9 - h/1.13 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px8, offset_y[i] + py + py8 - h/1.29 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 - h/1.51 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px6, offset_y[i] + py + py6 - h/1.81 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5 - h/2.3 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 6 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 - h/3.05 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 7 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 - h/4.5 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 8 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/9 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 9 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 + h/9 - sizes[i][2], 0, 1, alpha/100)
            end
        elseif total_lines == 10 then
            if i == 1 then
                obj.draw(offset_x[i] + px + px10, offset_y[i] + py + py10 - h/1.12 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 2 then
                obj.draw(offset_x[i] + px + px9, offset_y[i] + py + py9 - h/1.26 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 3 then
                obj.draw(offset_x[i] + px + px8, offset_y[i] + py + py8 - h/1.435 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 4 then
                obj.draw(offset_x[i] + px + px7, offset_y[i] + py + py7 - h/1.68 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 5 then
                obj.draw(offset_x[i] + px + px6, offset_y[i] + py + py6 - h/2.01 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 6 then
                obj.draw(offset_x[i] + px + px5, offset_y[i] + py + py5 - h/2.51 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 7 then
                obj.draw(offset_x[i] + px + px4, offset_y[i] + py + py4 - h/3.35 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 8 then
                obj.draw(offset_x[i] + px + px3, offset_y[i] + py + py3 - h/5.05 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 9 then
                obj.draw(offset_x[i] + px + px2, offset_y[i] + py + py2 - h/10 + sizes[i][2], 0, 1, alpha/100)
            elseif i == 10 then
                obj.draw(offset_x[i] + px + px1, offset_y[i] + py + py1 + h/10 - sizes[i][2], 0, 1, alpha/100)
            end
        end
    end
end

return M