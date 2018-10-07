import { Component, OnInit } from '@angular/core';

import { ORDERS } from '../mock-orders';

@Component({
  selector: 'app-order-list',
  templateUrl: './order-list.component.html',
  styleUrls: ['./order-list.component.css']
})
export class OrderListComponent implements OnInit {

  orders = ORDERS;

  constructor() { }

  ngOnInit() {
  }

}
