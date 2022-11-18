.class Landroid/nfc/NfcActivityManager$NfcApplicationState;
.super Ljava/lang/Object;
.source "NfcActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NfcActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcApplicationState"
.end annotation


# instance fields
.field final greylist-max-o app:Landroid/app/Application;

.field greylist-max-o refCount:I

.field final synthetic blacklist this$0:Landroid/nfc/NfcActivityManager;


# direct methods
.method public constructor blacklist <init>(Landroid/nfc/NfcActivityManager;Landroid/app/Application;)V
    .locals 1
    .param p1, "this$0"    # Landroid/nfc/NfcActivityManager;
    .param p2, "app"    # Landroid/app/Application;

    .line 61
    iput-object p1, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->this$0:Landroid/nfc/NfcActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->refCount:I

    .line 62
    iput-object p2, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->app:Landroid/app/Application;

    .line 63
    return-void
.end method


# virtual methods
.method public greylist-max-o register()V
    .locals 2

    .line 65
    iget v0, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->refCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->refCount:I

    .line 66
    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->app:Landroid/app/Application;

    iget-object v1, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->this$0:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 69
    :cond_0
    return-void
.end method

.method public greylist-max-o unregister()V
    .locals 2

    .line 71
    iget v0, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->refCount:I

    .line 72
    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->app:Landroid/app/Application;

    iget-object v1, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->this$0:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 74
    :cond_0
    if-gez v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-ve refcount for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->app:Landroid/app/Application;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NFC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    :goto_0
    return-void
.end method
