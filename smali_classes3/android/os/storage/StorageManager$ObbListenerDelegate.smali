.class Landroid/os/storage/StorageManager$ObbListenerDelegate;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbListenerDelegate"
.end annotation


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mObbEventListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/storage/OnObbStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o nonce:I

.field final synthetic blacklist this$0:Landroid/os/storage/StorageManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetnonce(Landroid/os/storage/StorageManager$ObbListenerDelegate;)I
    .locals 0

    iget p0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->nonce:I

    return p0
.end method

.method constructor blacklist <init>(Landroid/os/storage/StorageManager;Landroid/os/storage/OnObbStateChangeListener;)V
    .locals 2
    .param p2, "listener"    # Landroid/os/storage/OnObbStateChangeListener;

    .line 455
    iput-object p1, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    invoke-static {p1}, Landroid/os/storage/StorageManager;->-$$Nest$mgetNextNonce(Landroid/os/storage/StorageManager;)I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->nonce:I

    .line 457
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mObbEventListenerRef:Ljava/lang/ref/WeakReference;

    .line 458
    new-instance v0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->-$$Nest$fgetmLooper(Landroid/os/storage/StorageManager;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;-><init>(Landroid/os/storage/StorageManager$ObbListenerDelegate;Landroid/os/Looper;Landroid/os/storage/StorageManager;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 469
    return-void
.end method


# virtual methods
.method greylist-max-o getListener()Landroid/os/storage/OnObbStateChangeListener;
    .locals 1

    .line 472
    iget-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mObbEventListenerRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 473
    const/4 v0, 0x0

    return-object v0

    .line 475
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/OnObbStateChangeListener;

    return-object v0
.end method

.method greylist-max-o sendObbStateChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 479
    iget-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 480
    return-void
.end method
