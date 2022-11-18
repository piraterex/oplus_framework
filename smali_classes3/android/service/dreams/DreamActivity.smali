.class public Landroid/service/dreams/DreamActivity;
.super Landroid/app/Activity;
.source "DreamActivity.java"


# static fields
.field static final blacklist EXTRA_CALLBACK:Ljava/lang/String; = "binder"

.field static final blacklist EXTRA_DREAM_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist finishAndRemoveTask()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 80
    const/4 v0, 0x0

    const v1, 0x10a002f

    invoke-virtual {p0, v0, v1}, Landroid/service/dreams/DreamActivity;->overridePendingTransition(II)V

    .line 81
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Landroid/service/dreams/DreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 62
    .local v1, "extras":Landroid/os/Bundle;
    nop

    .line 63
    const-string v2, "binder"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/service/dreams/DreamService$DreamActivityCallback;

    .line 65
    .local v2, "callback":Landroid/service/dreams/DreamService$DreamActivityCallback;
    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {v2, p0}, Landroid/service/dreams/DreamService$DreamActivityCallback;->onActivityCreated(Landroid/service/dreams/DreamActivity;)V

    .line 68
    :cond_1
    return-void
.end method

.method public whitelist onResume()V
    .locals 2

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    const v0, 0x10a0030

    const v1, 0x10a0031

    invoke-virtual {p0, v0, v1}, Landroid/service/dreams/DreamActivity;->overridePendingTransition(II)V

    .line 75
    return-void
.end method
