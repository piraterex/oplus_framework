.class Landroid/os/image/DynamicSystemClient$IncomingHandler;
.super Landroid/os/Handler;
.source "DynamicSystemClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/image/DynamicSystemClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IncomingHandler"
.end annotation


# instance fields
.field private final blacklist mWeakClient:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/image/DynamicSystemClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/os/image/DynamicSystemClient;)V
    .locals 1
    .param p1, "service"    # Landroid/os/image/DynamicSystemClient;

    .line 225
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 226
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/os/image/DynamicSystemClient$IncomingHandler;->mWeakClient:Ljava/lang/ref/WeakReference;

    .line 227
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 231
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient$IncomingHandler;->mWeakClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/image/DynamicSystemClient;

    .line 233
    .local v0, "service":Landroid/os/image/DynamicSystemClient;
    if-eqz v0, :cond_0

    .line 234
    invoke-static {v0, p1}, Landroid/os/image/DynamicSystemClient;->-$$Nest$mhandleMessage(Landroid/os/image/DynamicSystemClient;Landroid/os/Message;)V

    .line 236
    :cond_0
    return-void
.end method
