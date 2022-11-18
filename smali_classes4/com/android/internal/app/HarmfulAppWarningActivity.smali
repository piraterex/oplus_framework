.class public Lcom/android/internal/app/HarmfulAppWarningActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "HarmfulAppWarningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final blacklist EXTRA_HARMFUL_APP_WARNING:Ljava/lang/String; = "harmful_app_warning"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mHarmfulAppWarning:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mTarget:Landroid/content/IntentSender;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/android/internal/app/HarmfulAppWarningActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/HarmfulAppWarningActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method public static blacklist createHarmfulAppWarningIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "target"    # Landroid/content/IntentSender;
    .param p3, "harmfulAppWarning"    # Ljava/lang/CharSequence;

    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/internal/app/HarmfulAppWarningActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 127
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    const-string v1, "harmful_app_warning"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 130
    return-object v0
.end method

.method private blacklist createView(Landroid/content/pm/ApplicationInfo;)Landroid/view/View;
    .locals 5
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "view":Landroid/view/View;
    const v1, 0x10201f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v4, 0x5

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mHarmfulAppWarning:Ljava/lang/String;

    .line 95
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-object v0
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 101
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 103
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/app/EventLogTags;->writeHarmfulAppWarningUninstall(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->finish()V

    .line 106
    goto :goto_1

    .line 108
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .line 112
    .local v0, "target":Landroid/content/IntentSender;
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/app/HarmfulAppWarningActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Landroid/content/IntentSender$SendIntentException;
    sget-object v2, Lcom/android/internal/app/HarmfulAppWarningActivity;->TAG:Ljava/lang/String;

    const-string v3, "Error while starting intent sender"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .end local v1    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/app/EventLogTags;->writeHarmfulAppWarningLaunchAnyway(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->finish()V

    .line 121
    .end local v0    # "target":Landroid/content/IntentSender;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    .line 57
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    iput-object v1, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mTarget:Landroid/content/IntentSender;

    .line 58
    const-string v1, "harmful_app_warning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mHarmfulAppWarning:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mTarget:Landroid/content/IntentSender;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 61
    :cond_0
    sget-object v1, Lcom/android/internal/app/HarmfulAppWarningActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->finish()V

    .line 67
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 74
    iget-object v2, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 75
    .local v2, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x104044e

    invoke-virtual {p0, v3}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 76
    invoke-direct {p0, v1}, Lcom/android/internal/app/HarmfulAppWarningActivity;->createView(Landroid/content/pm/ApplicationInfo;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 78
    const v3, 0x104044f

    invoke-virtual {p0, v3}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 79
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 80
    const v3, 0x104044d

    invoke-virtual {p0, v3}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 81
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    iget-object v3, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v4, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/AlertController;->installContent(Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 84
    return-void

    .line 68
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "p":Lcom/android/internal/app/AlertController$AlertParams;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/internal/app/HarmfulAppWarningActivity;->TAG:Ljava/lang/String;

    const-string v3, "Could not show warning because package does not exist "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->finish()V

    .line 71
    return-void
.end method
