.class public Lcom/android/internal/app/NetInitiatedActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "NetInitiatedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist GPS_NO_RESPONSE_TIME_OUT:I = 0x1

.field private static final blacklist NEGATIVE_BUTTON:I = -0x2

.field private static final blacklist POSITIVE_BUTTON:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "NetInitiatedActivity"


# instance fields
.field private blacklist default_response:I

.field private blacklist default_response_timeout:I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist notificationId:I

.field private blacklist timeout:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdefault_response(Lcom/android/internal/app/NetInitiatedActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnotificationId(Lcom/android/internal/app/NetInitiatedActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendUserResponse(Lcom/android/internal/app/NetInitiatedActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/NetInitiatedActivity;->sendUserResponse(I)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    .line 51
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->timeout:I

    .line 52
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response:I

    .line 53
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response_timeout:I

    .line 55
    new-instance v0, Lcom/android/internal/app/NetInitiatedActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/NetInitiatedActivity$1;-><init>(Lcom/android/internal/app/NetInitiatedActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist sendUserResponse(I)V
    .locals 2
    .param p1, "response"    # I

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendUserResponse, response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetInitiatedActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-class v0, Landroid/location/LocationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManagerInternal;

    .line 128
    .local v0, "lm":Landroid/location/LocationManagerInternal;
    iget v1, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    invoke-virtual {v0, v1, p1}, Landroid/location/LocationManagerInternal;->sendNiResponse(II)V

    .line 129
    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 112
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 113
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/app/NetInitiatedActivity;->sendUserResponse(I)V

    .line 115
    :cond_0
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 116
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/app/NetInitiatedActivity;->sendUserResponse(I)V

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->finish()V

    .line 121
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    .line 122
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 72
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/NetInitiatedActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 79
    .local v1, "p":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 80
    .local v2, "context":Landroid/content/Context;
    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 81
    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 82
    const v3, 0x1040442

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 83
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 84
    const v3, 0x1040441

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 85
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 87
    const-string/jumbo v3, "notif_id"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    .line 88
    iget v3, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response_timeout:I

    const-string/jumbo v4, "timeout"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/NetInitiatedActivity;->timeout:I

    .line 89
    const-string v3, "default_resp"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response:I

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate() : notificationId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " timeout: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/app/NetInitiatedActivity;->timeout:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " default_response:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "NetInitiatedActivity"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v3, p0, Lcom/android/internal/app/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/NetInitiatedActivity;->timeout:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->setupAlert()V

    .line 94
    return-void
.end method

.method protected whitelist onPause()V
    .locals 2

    .line 104
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 105
    const-string v0, "NetInitiatedActivity"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method protected whitelist onResume()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 99
    const-string v0, "NetInitiatedActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method
