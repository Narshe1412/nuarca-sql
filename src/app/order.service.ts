import { Injectable } from '@angular/core';
import { Observable, of } from 'rxjs';
import { MessageService } from './message.service';

import { Order } from './order';
import { ORDERS } from './mock-orders';

@Injectable({
  providedIn: 'root'
})
export class OrderService {

  constructor(private messageService : MessageService) { }

  getOrders(): Observable<Order[]> {
    this.messageService.add('[LOG] OrderService: fetched orders');
    return of(ORDERS);
  }
}
