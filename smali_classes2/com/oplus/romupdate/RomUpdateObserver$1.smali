.class Lcom/oplus/romupdate/RomUpdateObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "RomUpdateObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/romupdate/RomUpdateObserver;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/romupdate/RomUpdateObserver;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/romupdate/RomUpdateObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/romupdate/RomUpdateObserver;

    .line 73
    iput-object p1, p0, Lcom/oplus/romupdate/RomUpdateObserver$1;->this$0:Lcom/oplus/romupdate/RomUpdateObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 76
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oplus/romupdate/RomUpdateObserver$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/romupdate/RomUpdateObserver$1$1;-><init>(Lcom/oplus/romupdate/RomUpdateObserver$1;Landroid/content/Context;Landroid/content/Intent;)V

    const-string v2, "rus_observer_thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    return-void
.end method
