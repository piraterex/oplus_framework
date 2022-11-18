.class Landroid/accessibilityservice/AccessibilityService$1;
.super Ljava/lang/Object;
.source "AccessibilityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accessibilityservice/AccessibilityService;->onPerformGestureResult(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/accessibilityservice/AccessibilityService;

.field final synthetic blacklist val$completedSuccessfully:Z

.field final synthetic blacklist val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;


# direct methods
.method constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService;ZLandroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accessibilityservice/AccessibilityService;

    .line 1228
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    iput-boolean p2, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$completedSuccessfully:Z

    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 1231
    iget-boolean v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$completedSuccessfully:Z

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    iget-object v1, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    .line 1233
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCompleted(Landroid/accessibilityservice/GestureDescription;)V

    goto :goto_0

    .line 1235
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    iget-object v1, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    .line 1236
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCancelled(Landroid/accessibilityservice/GestureDescription;)V

    .line 1238
    :goto_0
    return-void
.end method
