package com.rifdahalf.foodci.adapter

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ArrayAdapter
import com.rifdahalf.foodci.R
import com.rifdahalf.foodci.model.FoodModelItem
import kotlinx.android.synthetic.main.list_item.view.*

class FoodAdapter(context: Context, resource: Int, objects: List<FoodModelItem>) :
    ArrayAdapter<FoodModelItem?>(context, resource, objects) {
    private val foodModelItem: List<FoodModelItem> = objects

    override fun getView(position: Int, convertView: View?, parent: ViewGroup)
    : View {
        val inflater = context.getSystemService(Context
            .LAYOUT_INFLATER_SERVICE) as LayoutInflater
        val v: View = inflater.inflate(R.layout.list_item,
        parent, false)

        v.txtJudulList.text = foodModelItem[position].namaFood
        v.txtDeskripsiList.text = foodModelItem[position].deskripsiFood
        v.txtHargaList.text = foodModelItem[position].hargaFood
        v.imgListItem.toString = foodModelItem[position].gambarFood


    }
}