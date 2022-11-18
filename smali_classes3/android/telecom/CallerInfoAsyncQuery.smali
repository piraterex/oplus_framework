.class public Landroid/telecom/CallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
        Landroid/telecom/CallerInfoAsyncQuery$QueryPoolException;,
        Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;,
        Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist ENABLE_UNKNOWN_NUMBER_GEO_DESCRIPTION:Z = true

.field private static final blacklist EVENT_ADD_LISTENER:I = 0x2

.field private static final blacklist EVENT_EMERGENCY_NUMBER:I = 0x4

.field private static final blacklist EVENT_END_OF_QUEUE:I = 0x3

.field private static final blacklist EVENT_GET_GEO_DESCRIPTION:I = 0x6

.field private static final blacklist EVENT_NEW_QUERY:I = 0x1

.field private static final blacklist EVENT_VOICEMAIL_NUMBER:I = 0x5

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CallerInfoAsyncQuery"


# instance fields
.field private blacklist mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mrelease(Landroid/telecom/CallerInfoAsyncQuery;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/CallerInfoAsyncQuery;->release()V

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    return-void
.end method

.method private blacklist allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;

    .line 547
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 550
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Landroid/telecom/CallerInfoAsyncQuery;Landroid/content/Context;Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler-IA;)V

    iput-object v0, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 551
    invoke-static {v0, p2}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-$$Nest$fputmQueryUri(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)V

    .line 552
    return-void

    .line 548
    :cond_0
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Landroid/telecom/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 114
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 115
    .local v0, "currentUser":I
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getProcessUserId()I

    move-result v1

    .line 119
    .local v1, "myUser":I
    if-eq v1, v0, :cond_0

    .line 122
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 122
    invoke-virtual {p0, v3, v2, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 124
    .local v3, "otherContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 125
    .end local v3    # "otherContext":Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 126
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "CallerInfoAsyncQuery"

    const-string v5, "Can\'t find self package"

    invoke-static {v4, v3, v5, v2}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    return-object v2
.end method

.method private greylist release()V
    .locals 2

    .line 559
    iget-object v0, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-$$Nest$fputmContext(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)V

    .line 560
    iget-object v0, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-$$Nest$fputmQueryUri(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)V

    .line 561
    iget-object v0, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-$$Nest$fputmCallerInfo(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/telecom/CallerInfo;)V

    .line 562
    iput-object v1, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 563
    return-void
.end method

.method private static blacklist sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .line 566
    if-eqz p0, :cond_1

    .line 567
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "uriString":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 569
    .local v1, "indexOfLastSlash":I
    if-lez v1, :cond_0

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/xxxxxxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 572
    :cond_0
    return-object v0

    .line 575
    .end local v0    # "uriString":Ljava/lang/String;
    .end local v1    # "indexOfLastSlash":I
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist startQuery(ILandroid/content/Context;Landroid/net/Uri;Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Landroid/telecom/CallerInfoAsyncQuery;
    .locals 11
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "listener"    # Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .line 414
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery;

    invoke-direct {v0}, Landroid/telecom/CallerInfoAsyncQuery;-><init>()V

    .line 415
    .local v0, "c":Landroid/telecom/CallerInfoAsyncQuery;
    invoke-direct {v0, p1, p2}, Landroid/telecom/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 420
    new-instance v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>(Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper-IA;)V

    .line 421
    .local v1, "cw":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p3, v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->listener:Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 422
    iput-object p4, v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 423
    const/4 v2, 0x1

    iput v2, v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 425
    iget-object v3, v0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v4, p0

    move-object v5, v1

    move-object v6, p2

    invoke-virtual/range {v3 .. v10}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-object v0
.end method

.method public static blacklist startQuery(ILandroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Landroid/telecom/CallerInfoAsyncQuery;
    .locals 7
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .line 444
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v6

    .line 445
    .local v6, "subId":I
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroid/telecom/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;I)Landroid/telecom/CallerInfoAsyncQuery;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist startQuery(ILandroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;I)Landroid/telecom/CallerInfoAsyncQuery;
    .locals 19
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;
    .param p5, "subId"    # I

    .line 470
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 471
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 473
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 472
    const-string/jumbo v5, "sip"

    invoke-virtual {v0, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 480
    .local v12, "contactRef":Landroid/net/Uri;
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery;

    invoke-direct {v0}, Landroid/telecom/CallerInfoAsyncQuery;-><init>()V

    move-object v13, v0

    .line 481
    .local v13, "c":Landroid/telecom/CallerInfoAsyncQuery;
    invoke-direct {v13, v1, v12}, Landroid/telecom/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 484
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>(Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper-IA;)V

    move-object v14, v0

    .line 485
    .local v14, "cw":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    move-object/from16 v15, p3

    iput-object v15, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->listener:Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 486
    move-object/from16 v11, p4

    iput-object v11, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 487
    iput-object v2, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    .line 488
    iput v3, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->subId:I

    .line 491
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 492
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    const/4 v4, 0x0

    .line 494
    .local v4, "isEmergencyNumber":Z
    :try_start_0
    invoke-virtual {v10, v2}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v4    # "isEmergencyNumber":Z
    .local v0, "isEmergencyNumber":Z
    goto :goto_0

    .line 495
    .end local v0    # "isEmergencyNumber":Z
    .restart local v4    # "isEmergencyNumber":Z
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 499
    .local v0, "ise":Ljava/lang/IllegalStateException;
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    .line 501
    .end local v4    # "isEmergencyNumber":Z
    .local v0, "isEmergencyNumber":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 502
    const/4 v4, 0x4

    iput v4, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_1

    .line 503
    :cond_0
    invoke-static {v1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 504
    const/4 v4, 0x5

    iput v4, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_1

    .line 506
    :cond_1
    const/4 v4, 0x1

    iput v4, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 509
    :goto_1
    iget-object v4, v13, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(CASE WHEN number=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' THEN 0 ELSE 1 END) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move/from16 v5, p0

    move-object v6, v14

    move-object v7, v12

    move-object/from16 v18, v10

    .end local v10    # "tm":Landroid/telephony/TelephonyManager;
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-virtual/range {v4 .. v11}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-object v13
.end method


# virtual methods
.method public blacklist addQueryListener(ILandroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
    .locals 10
    .param p1, "token"    # I
    .param p2, "listener"    # Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p3, "cookie"    # Ljava/lang/Object;

    .line 534
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>(Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper-IA;)V

    .line 535
    .local v0, "cw":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p2, v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->listener:Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 536
    iput-object p3, v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 537
    const/4 v1, 0x2

    iput v1, v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 539
    iget-object v2, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v3, p1

    move-object v4, v0

    invoke-virtual/range {v2 .. v9}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    return-void
.end method
