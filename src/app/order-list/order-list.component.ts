import { OrderService } from './../order.service';
import { Component, OnInit } from '@angular/core';
import { Order } from '../order';

@Component({
  selector: 'app-order-list',
  templateUrl: './order-list.component.html',
  styleUrls: ['./order-list.component.css']
})
export class OrderListComponent implements OnInit {

  orders: Order[];

  constructor(private orderService: OrderService) { }

  ngOnInit() {
    this.getOrders();
  }

  getOrders(): void {
    this.orderService.getOrders().subscribe(orders => this.orders = orders);
  }
}