.class public Lcom/android/internal/util/NotificationMessagingUtil;
.super Ljava/lang/Object;
.source "NotificationMessagingUtil.java"


# static fields
.field private static final blacklist DEFAULT_SMS_APP_SETTING:Ljava/lang/String; = "sms_default_application"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDefaultSmsApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSmsContentObserver:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcacheDefaultSmsApp(Lcom/android/internal/util/NotificationMessagingUtil;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->cacheDefaultSmsApp(I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mDefaultSmsApp:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil$1;

    new-instance v1, Landroid/os/Handler;

    .line 79
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/NotificationMessagingUtil$1;-><init>(Lcom/android/internal/util/NotificationMessagingUtil;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mSmsContentObserver:Landroid/database/ContentObserver;

    .line 45
    iput-object p1, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 47
    const-string/jumbo v2, "sms_default_application"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 46
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 48
    return-void
.end method

.method private blacklist cacheDefaultSmsApp(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 73
    iget-object v0, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mDefaultSmsApp:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 73
    const-string/jumbo v2, "sms_default_application"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    return-void
.end method

.method private blacklist hasMessagingStyle(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 89
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const-class v1, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private blacklist isCategoryMessage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 93
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string/jumbo v1, "msg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist isDefaultMessagingApp(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 64
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 65
    .local v0, "userId":I
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mDefaultSmsApp:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 67
    invoke-direct {p0, v0}, Lcom/android/internal/util/NotificationMessagingUtil;->cacheDefaultSmsApp(I)V

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mDefaultSmsApp:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 65
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public blacklist isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "importance"    # I

    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ge p2, v1, :cond_0

    .line 52
    return v0

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->hasMessagingStyle(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isCategoryMessage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isDefaultMessagingApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public blacklist isMessaging(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->hasMessagingStyle(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isDefaultMessagingApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isCategoryMessage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
