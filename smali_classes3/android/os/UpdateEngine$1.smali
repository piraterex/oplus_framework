.class Landroid/os/UpdateEngine$1;
.super Landroid/os/IUpdateEngineCallback$Stub;
.source "UpdateEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/UpdateEngine;

.field final synthetic blacklist val$callback:Landroid/os/UpdateEngineCallback;

.field final synthetic blacklist val$handler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/os/UpdateEngine;Landroid/os/Handler;Landroid/os/UpdateEngineCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/UpdateEngine;

    .line 276
    iput-object p1, p0, Landroid/os/UpdateEngine$1;->this$0:Landroid/os/UpdateEngine;

    iput-object p2, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    invoke-direct {p0}, Landroid/os/IUpdateEngineCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPayloadApplicationComplete(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .line 293
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 294
    new-instance v1, Landroid/os/UpdateEngine$1$2;

    invoke-direct {v1, p0, p1}, Landroid/os/UpdateEngine$1$2;-><init>(Landroid/os/UpdateEngine$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    invoke-virtual {v0, p1}, Landroid/os/UpdateEngineCallback;->onPayloadApplicationComplete(I)V

    .line 303
    :goto_0
    return-void
.end method

.method public blacklist onStatusUpdate(IF)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "percent"    # F

    .line 279
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 280
    new-instance v1, Landroid/os/UpdateEngine$1$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/UpdateEngine$1$1;-><init>(Landroid/os/UpdateEngine$1;IF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    invoke-virtual {v0, p1, p2}, Landroid/os/UpdateEngineCallback;->onStatusUpdate(IF)V

    .line 289
    :goto_0
    return-void
.end method
