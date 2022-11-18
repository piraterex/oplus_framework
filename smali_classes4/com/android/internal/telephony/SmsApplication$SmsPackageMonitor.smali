.class final Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;
.super Lcom/android/internal/telephony/PackageChangeReceiver;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmsPackageMonitor"
.end annotation


# instance fields
.field final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 860
    invoke-direct {p0}, Lcom/android/internal/telephony/PackageChangeReceiver;-><init>()V

    .line 861
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    .line 862
    return-void
.end method

.method private blacklist onPackageChanged()V
    .locals 6

    .line 882
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->getSendingUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    .local v0, "userId":I
    goto :goto_0

    .line 883
    .end local v0    # "userId":I
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    move v0, v1

    .line 889
    .local v0, "userId":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    .line 890
    .local v1, "userContext":Landroid/content/Context;
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 892
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 893
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 892
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 898
    goto :goto_1

    .line 894
    :catch_1
    move-exception v2

    .line 900
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 902
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v3

    .line 903
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_1

    .line 904
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$smconfigurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    .line 906
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist onPackageAppeared()V
    .locals 0

    .line 871
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged()V

    .line 872
    return-void
.end method

.method public blacklist onPackageDisappeared()V
    .locals 0

    .line 866
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged()V

    .line 867
    return-void
.end method

.method public blacklist onPackageModified(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 876
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged()V

    .line 877
    return-void
.end method
