.class public Landroid/provider/BlockedNumberContract$SystemContract;
.super Ljava/lang/Object;
.source "BlockedNumberContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BlockedNumberContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemContract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTION_BLOCK_SUPPRESSION_STATE_CHANGED:Ljava/lang/String; = "android.provider.action.BLOCK_SUPPRESSION_STATE_CHANGED"

.field public static final greylist-max-o ENHANCED_SETTING_KEY_BLOCK_PAYPHONE:Ljava/lang/String; = "block_payphone_calls_setting"

.field public static final greylist-max-o ENHANCED_SETTING_KEY_BLOCK_PRIVATE:Ljava/lang/String; = "block_private_number_calls_setting"

.field public static final blacklist ENHANCED_SETTING_KEY_BLOCK_UNAVAILABLE:Ljava/lang/String; = "block_unavailable_calls_setting"

.field public static final greylist-max-o ENHANCED_SETTING_KEY_BLOCK_UNKNOWN:Ljava/lang/String; = "block_unknown_calls_setting"

.field public static final greylist-max-o ENHANCED_SETTING_KEY_BLOCK_UNREGISTERED:Ljava/lang/String; = "block_numbers_not_in_contacts_setting"

.field public static final greylist-max-o ENHANCED_SETTING_KEY_SHOW_EMERGENCY_CALL_NOTIFICATION:Ljava/lang/String; = "show_emergency_call_notification"

.field public static final greylist-max-o METHOD_END_BLOCK_SUPPRESSION:Ljava/lang/String; = "end_block_suppression"

.field public static final greylist-max-o METHOD_GET_BLOCK_SUPPRESSION_STATUS:Ljava/lang/String; = "get_block_suppression_status"

.field public static final greylist-max-o METHOD_GET_ENHANCED_BLOCK_SETTING:Ljava/lang/String; = "get_enhanced_block_setting"

.field public static final greylist-max-o METHOD_NOTIFY_EMERGENCY_CONTACT:Ljava/lang/String; = "notify_emergency_contact"

.field public static final greylist-max-o METHOD_SET_ENHANCED_BLOCK_SETTING:Ljava/lang/String; = "set_enhanced_block_setting"

.field public static final greylist-max-o METHOD_SHOULD_SHOW_EMERGENCY_CALL_NOTIFICATION:Ljava/lang/String; = "should_show_emergency_call_notification"

.field public static final greylist-max-o METHOD_SHOULD_SYSTEM_BLOCK_NUMBER:Ljava/lang/String; = "should_system_block_number"

.field public static final greylist-max-o RES_BLOCKING_SUPPRESSED_UNTIL_TIMESTAMP:Ljava/lang/String; = "blocking_suppressed_until_timestamp"

.field public static final greylist-max-o RES_IS_BLOCKING_SUPPRESSED:Ljava/lang/String; = "blocking_suppressed"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist blockStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "blockStatus"    # I

    .line 605
    packed-switch p0, :pswitch_data_0

    .line 621
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 619
    :pswitch_0
    const-string v0, "blocked - unavailable"

    return-object v0

    .line 617
    :pswitch_1
    const-string v0, "blocked - not in contacts"

    return-object v0

    .line 615
    :pswitch_2
    const-string v0, "blocked - payphone"

    return-object v0

    .line 613
    :pswitch_3
    const-string v0, "blocked - unknown"

    return-object v0

    .line 611
    :pswitch_4
    const-string v0, "blocked - restricted"

    return-object v0

    .line 609
    :pswitch_5
    const-string v0, "blocked - in list"

    return-object v0

    .line 607
    :pswitch_6
    const-string/jumbo v0, "not blocked"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o endBlockSuppression(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "caller":Ljava/lang/String;
    invoke-static {}, Landroid/provider/BlockedNumberContract;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "endBlockSuppression: caller=%s"

    invoke-static {v1, v3, v2}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "end_block_suppression"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 483
    return-void
.end method

.method public static greylist-max-o getBlockSuppressionStatus(Landroid/content/Context;)Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 522
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v2, "get_block_suppression_status"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 524
    .local v0, "res":Landroid/os/Bundle;
    new-instance v1, Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;

    .line 525
    const-string v2, "blocking_suppressed"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 526
    const-string v4, "blocking_suppressed_until_timestamp"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;-><init>(ZJ)V

    .line 527
    .local v1, "blockSuppressionStatus":Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;
    invoke-static {}, Landroid/provider/BlockedNumberContract;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 528
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    aput-object v1, v4, v3

    .line 527
    const-string v3, "getBlockSuppressionStatus: caller=%s, status=%s"

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    return-object v1
.end method

.method public static greylist-max-o getEnhancedBlockSetting(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 565
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 566
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "extra_enhanced_setting_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v5, "get_enhanced_block_setting"

    invoke-virtual {v3, v4, v5, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 570
    .local v3, "res":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    const-string v4, "enhanced_setting_enabled"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 571
    .end local v3    # "res":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 574
    .local v3, "ex":Ljava/lang/RuntimeException;
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "getEnhancedBlockSetting: provider not ready."

    invoke-static {v1, v5, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    return v2
.end method

.method public static greylist-max-o notifyEmergencyContact(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 464
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/provider/BlockedNumberContract;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "notifyEmergencyContact; caller=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v4, "notify_emergency_contact"

    invoke-virtual {v2, v3, v4, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    goto :goto_0

    .line 467
    :catch_0
    move-exception v2

    .line 470
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v3, "notifyEmergencyContact: provider not ready."

    invoke-static {v1, v3, v0}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public static greylist-max-o setEnhancedBlockSetting(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 593
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 594
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "extra_enhanced_setting_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v1, "extra_enhanced_setting_value"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 596
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v3, "set_enhanced_block_setting"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 598
    return-void
.end method

.method public static greylist-max-o shouldShowEmergencyCallNotification(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 540
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v4, "should_show_emergency_call_notification"

    invoke-virtual {v2, v3, v4, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 542
    .local v2, "res":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string/jumbo v3, "show_emergency_call_notification"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 543
    .end local v2    # "res":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 546
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "shouldShowEmergencyCallNotification: provider not ready."

    invoke-static {v0, v4, v3}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    return v1
.end method

.method public static blacklist shouldSystemBlockNumber(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 502
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "caller":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v4, "should_system_block_number"

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 505
    .local v2, "res":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string v3, "block_status"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    .line 506
    :cond_0
    move v3, v0

    :goto_0
    nop

    .line 507
    .local v3, "blockResult":I
    invoke-static {}, Landroid/provider/BlockedNumberContract;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "shouldSystemBlockNumber: number=%s, caller=%s, result=%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 508
    invoke-static {p1}, Landroid/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    invoke-static {v3}, Landroid/provider/BlockedNumberContract$SystemContract;->blockStatusToString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 507
    invoke-static {v4, v5, v6}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    return v3

    .line 510
    .end local v1    # "caller":Ljava/lang/String;
    .end local v2    # "res":Landroid/os/Bundle;
    .end local v3    # "blockResult":I
    :catch_0
    move-exception v1

    .line 513
    .local v1, "ex":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    const-string/jumbo v4, "shouldSystemBlockNumber: provider not ready."

    invoke-static {v2, v4, v3}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    return v0
.end method
