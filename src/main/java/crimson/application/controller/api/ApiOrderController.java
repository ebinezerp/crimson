/*
 * package crimson.application.controller.api;
 * 
 * import java.util.List;
 * 
 * import org.jboss.logging.Param; import
 * org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.http.HttpStatus; import
 * org.springframework.http.ResponseEntity; import
 * org.springframework.web.bind.annotation.CrossOrigin; import
 * org.springframework.web.bind.annotation.GetMapping; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestParam; import
 * org.springframework.web.bind.annotation.RestController;
 * 
 * import crimson.application.model.Order; import
 * crimson.application.model.OrderReciever; import
 * crimson.application.service.OrderRecieverService; import
 * crimson.application.service.OrderService; import
 * crimson.application.service.UserService;
 * 
 * @RestController
 * 
 * @CrossOrigin(origins = "*")
 * 
 * @RequestMapping("/api") public class ApiOrderController {
 * 
 * @Autowired private OrderService orderService;
 * 
 * @Autowired private UserService userService;
 * 
 * @Autowired private OrderRecieverService orderRecieverService;
 * 
 * @GetMapping("/order") public ResponseEntity<Order>
 * getOrder(@RequestParam("orderId") Long orderId) { return new
 * ResponseEntity<Order>(orderService.get(orderId), HttpStatus.OK); }
 * 
 * @GetMapping("/orders") public ResponseEntity<List<Order>>
 * getOrders(@RequestParam("userId") Long userId) { return new
 * ResponseEntity<List<Order>>(orderService.getOrders(userService.getUserById(
 * userId)), HttpStatus.OK); }
 * 
 * 
 * @GetMapping("/order-reciever/recent") public ResponseEntity<OrderReciever>
 * getRecentOrderReciever(@RequestParam("userId") Long userId) {
 * 
 * OrderReciever orderReciever = orderRecieverService
 * .lastOrderReciever(orderService.getLast(userService.getUserById(userId)));
 * 
 * orderReciever.setId(null); orderReciever.getAddress().setId(null);
 * orderReciever.setOrder(null);
 * 
 * return new ResponseEntity<OrderReciever>(orderReciever, HttpStatus.OK); }
 * 
 * }
 */