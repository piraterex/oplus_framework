.class public Lcom/android/internal/app/BlockedAppStreamingActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BlockedAppStreamingActivity.java"


# static fields
.field private static final blacklist BLOCKED_COMPONENT_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final blacklist EXTRA_BLOCKED_ACTIVITY_INFO:Ljava/lang/String; = "com.android.internal.app.extra.BLOCKED_ACTIVITY_INFO"

.field private static final blacklist EXTRA_STREAMED_DEVICE:Ljava/lang/String; = "com.android.internal.app.extra.STREAMED_DEVICE"

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "com.android.internal.app"

.field private static final blacklist TAG:Ljava/lang/String; = "BlockedAppStreamingActivity"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method public static blacklist createIntent(Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3
    .param p0, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "streamedDeviceName"    # Ljava/lang/CharSequence;

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/internal/app/BlockedAppStreamingActivity;

    .line 92
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    const-string v1, "com.android.internal.app.extra.BLOCKED_ACTIVITY_INFO"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    const-string v1, "com.android.internal.app.extra.STREAMED_DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 91
    return-object v0
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 43
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 47
    .local v1, "appLabel":Ljava/lang/CharSequence;
    const-string v2, "com.android.internal.app.extra.BLOCKED_ACTIVITY_INFO"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 48
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 52
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid activity info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BlockedAppStreamingActivity"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->finish()V

    .line 55
    return-void

    .line 58
    :cond_1
    const-string v3, "com.android.internal.app.extra.STREAMED_DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 59
    .local v3, "streamedDeviceName":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_4

    .line 60
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v7

    .line 60
    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v7, 0x1040158

    .line 63
    invoke-virtual {p0, v7}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 64
    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v7, 0x1040153

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    .line 65
    invoke-virtual {p0, v7, v6}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 67
    :cond_2
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.android.settings"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const v7, 0x1040151

    if-eqz v4, :cond_3

    .line 68
    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v8, 0x1040159

    .line 69
    invoke-virtual {p0, v8}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 70
    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    .line 71
    invoke-virtual {p0, v7, v6}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 73
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v8, 0x1040154

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v1, v9, v5

    .line 74
    invoke-virtual {p0, v8, v9}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 75
    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    .line 76
    invoke-virtual {p0, v7, v6}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 79
    :cond_4
    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v7, 0x1040143

    invoke-virtual {p0, v7}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 80
    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v7, 0x1040142

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    invoke-virtual {p0, v7, v6}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 82
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->setupAlert()V

    .line 84
    return-void
.end method
