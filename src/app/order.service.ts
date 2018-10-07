import { Injectable } from '@angular/core';
import { Observable, of } from 'rxjs';
import { MessageService } from './message.service';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { catchError, map, tap } from 'rxjs/operators';

import { Order } from './order';
import { ORDERS } from './mock-orders';

@Injectable({
  providedIn: 'root'
})
export class OrderService {
  private apiUrl = 'api/orders';  // URL to web api TODO

  constructor(
    private http: HttpClient,
    private messageService: MessageService) { }

  /** GET heroes from the server */
  getOrders(): Observable<Order[]> {
    this.log('fetched orders');
    return this.http.get<Order[]>(this.apiUrl)
      .pipe(
        tap(orders => this.log('fetched orders')),
        catchError(this.handleError('getOrders', []))
      );
  }

  /** Log a HeroService message with the MessageService */
  private log(message: string) {
    this.messageService.add(`[LOG] OrderService: ${message}`);
  }


  /**
  * From Angular.io documentation
  * Handle Http operation that failed.
  * Let the app continue.
  * @param operation - name of the operation that failed
  * @param result - optional value to return as the observable result
  */
  private handleError<T>(operation = 'operation', result?: T) {
    return (error: any): Observable<T> => {

      // TODO: send the error to remote logging infrastructure
      console.error(error); // log to console instead

      // TODO: better job of transforming error for user consumption
      this.log(`${operation} failed: ${error.message}`);

      // Let the app keep running by returning an empty result.
      return of(result as T);
    };
  }
}
