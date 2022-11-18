.class public Lcom/android/internal/app/ShutdownActivity;
.super Landroid/app/Activity;
.source "ShutdownActivity.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ShutdownActivity"


# instance fields
.field private blacklist mConfirm:Z

.field private blacklist mReboot:Z

.field private blacklist mUserRequested:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfirm(Lcom/android/internal/app/ShutdownActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/ShutdownActivity;->mConfirm:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReboot(Lcom/android/internal/app/ShutdownActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/ShutdownActivity;->mReboot:Z

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/app/ShutdownActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.REBOOT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/ShutdownActivity;->mReboot:Z

    .line 42
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/ShutdownActivity;->mConfirm:Z

    .line 43
    const-string v1, "android.intent.extra.USER_REQUESTED_SHUTDOWN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/ShutdownActivity;->mUserRequested:Z

    .line 44
    if-eqz v1, :cond_0

    .line 45
    const-string/jumbo v1, "userrequested"

    goto :goto_0

    .line 46
    :cond_0
    const-string v1, "android.intent.extra.REASON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 47
    .local v1, "reason":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate(): confirm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/app/ShutdownActivity;->mConfirm:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShutdownActivity"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v2, Lcom/android/internal/app/ShutdownActivity$1;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/internal/app/ShutdownActivity$1;-><init>(Lcom/android/internal/app/ShutdownActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v2, "thr":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/app/ShutdownActivity;->finish()V

    .line 68
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_1

    .line 69
    :catch_0
    move-exception v3

    .line 71
    :goto_1
    return-void
.end method
