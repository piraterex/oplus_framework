.class Lcom/android/internal/telephony/ExponentialBackoff$1;
.super Ljava/lang/Object;
.source "ExponentialBackoff.java"

# interfaces
.implements Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ExponentialBackoff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ExponentialBackoff;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ExponentialBackoff;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ExponentialBackoff;

    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/ExponentialBackoff$1;->this$0:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 41
    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff$1;->this$0:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-static {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ExponentialBackoff;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public blacklist removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff$1;->this$0:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-static {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ExponentialBackoff;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method
