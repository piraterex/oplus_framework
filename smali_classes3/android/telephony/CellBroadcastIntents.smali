.class public Landroid/telephony/CellBroadcastIntents;
.super Ljava/lang/Object;
.source "CellBroadcastIntents.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist ACTION_AREA_INFO_UPDATED:Ljava/lang/String; = "android.telephony.action.AREA_INFO_UPDATED"

.field private static final blacklist EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CellBroadcastIntents"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private static blacklist getSubIdForPhone(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 123
    nop

    .line 124
    const-string/jumbo v0, "telephony_subscription_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 126
    .local v0, "subMan":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionIds(I)[I

    move-result-object v1

    .line 127
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    .line 128
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2

    .line 130
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method private static blacklist putPhoneIdAndSubIdExtra(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I

    .line 107
    invoke-static {p0, p2}, Landroid/telephony/CellBroadcastIntents;->getSubIdForPhone(Landroid/content/Context;I)I

    move-result v0

    .line 108
    .local v0, "subId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 109
    const-string/jumbo v1, "subscription"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    :cond_0
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string v1, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    return-void
.end method

.method public static whitelist sendSmsCbReceivedBroadcast(Landroid/content/Context;Landroid/os/UserHandle;Landroid/telephony/SmsCbMessage;Landroid/content/BroadcastReceiver;Landroid/os/Handler;II)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "smsCbMessage"    # Landroid/telephony/SmsCbMessage;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "slotIndex"    # I

    .line 87
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 88
    .local v8, "backgroundIntent":Landroid/content/Intent;
    const-string/jumbo v0, "message"

    move-object/from16 v7, p2

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    move/from16 v6, p6

    invoke-static {v9, v8, v6}, Landroid/telephony/CellBroadcastIntents;->putPhoneIdAndSubIdExtra(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 91
    const-string v20, "android.permission.RECEIVE_SMS"

    .line 92
    .local v20, "receiverPermission":Ljava/lang/String;
    const-string v21, "android:receive_sms"

    .line 93
    .local v21, "receiverAppOp":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 94
    const/4 v0, 0x0

    invoke-virtual {v9, v10, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v11

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v8

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move/from16 v17, p5

    invoke-virtual/range {v11 .. v19}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    move-object v11, v8

    goto :goto_0

    .line 98
    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object v7, v11

    move-object v11, v8

    .end local v8    # "backgroundIntent":Landroid/content/Intent;
    .local v11, "backgroundIntent":Landroid/content/Intent;
    move-object v8, v12

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 101
    :goto_0
    return-void
.end method
