.class public final Landroid/provider/Telephony$Sms;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Telephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$Sms$Intents;,
        Landroid/provider/Telephony$Sms$Conversations;,
        Landroid/provider/Telephony$Sms$Outbox;,
        Landroid/provider/Telephony$Sms$Draft;,
        Landroid/provider/Telephony$Sms$Sent;,
        Landroid/provider/Telephony$Sms$Inbox;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 419
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    return-void
.end method

.method public static greylist addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;
    .locals 11
    .param p0, "subId"    # I
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/Long;
    .param p7, "read"    # Z
    .param p8, "deliveryReport"    # Z

    .line 467
    const-wide/16 v9, -0x1

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v10}, Landroid/provider/Telephony$Sms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static greylist addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    .locals 12
    .param p0, "subId"    # I
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/Long;
    .param p7, "read"    # Z
    .param p8, "deliveryReport"    # Z
    .param p9, "threadId"    # J

    .line 517
    const/4 v11, -0x1

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-static/range {v0 .. v11}, Landroid/provider/Telephony$Sms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;
    .locals 3
    .param p0, "subId"    # I
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/Long;
    .param p7, "read"    # Z
    .param p8, "deliveryReport"    # Z
    .param p9, "threadId"    # J
    .param p11, "priority"    # I

    .line 543
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 544
    .local v0, "values":Landroid/content/ContentValues;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony addMessageToUri sub id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Telephony"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 547
    const-string v1, "address"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    if-eqz p6, :cond_0

    .line 549
    const-string v1, "date"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 551
    :cond_0
    if-eqz p7, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "read"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v1, "body"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    if-eqz p8, :cond_2

    .line 556
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 558
    :cond_2
    const-wide/16 v1, -0x1

    cmp-long v1, p9, v1

    if-eqz v1, :cond_3

    .line 559
    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "thread_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 561
    :cond_3
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static greylist addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z

    .line 444
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    const-wide/16 v9, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v10}, Landroid/provider/Telephony$Sms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static greylist addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z
    .param p8, "threadId"    # J

    .line 490
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v10}, Landroid/provider/Telephony$Sms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 390
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 391
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 394
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist isOutgoingFolder(I)Z
    .locals 1
    .param p0, "messageType"    # I

    .line 619
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

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

.method public static greylist moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "folder"    # I
    .param p3, "error"    # I

    .line 576
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 577
    return v0

    .line 580
    :cond_0
    const/4 v1, 0x0

    .line 581
    .local v1, "markAsUnread":Z
    const/4 v2, 0x0

    .line 582
    .local v2, "markAsRead":Z
    packed-switch p2, :pswitch_data_0

    .line 595
    return v0

    .line 592
    :pswitch_0
    const/4 v1, 0x1

    .line 593
    goto :goto_0

    .line 588
    :pswitch_1
    const/4 v2, 0x1

    .line 589
    goto :goto_0

    .line 585
    :pswitch_2
    nop

    .line 598
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 600
    .local v3, "values":Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    const-string/jumbo v4, "read"

    const/4 v11, 0x1

    if-eqz v1, :cond_1

    .line 602
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 603
    :cond_1
    if-eqz v2, :cond_2

    .line 604
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    :cond_2
    :goto_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "error_code"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v7, p1

    move-object v8, v3

    invoke-static/range {v5 .. v10}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-ne v11, v4, :cond_3

    move v0, v11

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "projection"    # [Ljava/lang/String;

    .line 402
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-p query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;

    .line 412
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 413
    if-nez p3, :cond_0

    const-string v0, "date DESC"

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p3

    .line 412
    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
