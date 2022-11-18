.class Landroid/telephony/SmsManager$7;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/SmsManager$SubscriptionResolverResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/SmsManager;

.field final synthetic blacklist val$configOverrides:Landroid/os/Bundle;

.field final synthetic blacklist val$contentUri:Landroid/net/Uri;

.field final synthetic blacklist val$locationUrl:Ljava/lang/String;

.field final synthetic blacklist val$m:Landroid/telephony/MmsManager;

.field final synthetic blacklist val$messageId:J

.field final synthetic blacklist val$sentIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/SmsManager;Landroid/telephony/MmsManager;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/SmsManager;

    .line 2699
    iput-object p1, p0, Landroid/telephony/SmsManager$7;->this$0:Landroid/telephony/SmsManager;

    iput-object p2, p0, Landroid/telephony/SmsManager$7;->val$m:Landroid/telephony/MmsManager;

    iput-object p3, p0, Landroid/telephony/SmsManager$7;->val$contentUri:Landroid/net/Uri;

    iput-object p4, p0, Landroid/telephony/SmsManager$7;->val$locationUrl:Ljava/lang/String;

    iput-object p5, p0, Landroid/telephony/SmsManager$7;->val$configOverrides:Landroid/os/Bundle;

    iput-object p6, p0, Landroid/telephony/SmsManager$7;->val$sentIntent:Landroid/app/PendingIntent;

    iput-wide p7, p0, Landroid/telephony/SmsManager$7;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFailure()V
    .locals 2

    .line 2708
    iget-object v0, p0, Landroid/telephony/SmsManager$7;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V

    .line 2709
    return-void
.end method

.method public blacklist onSuccess(I)V
    .locals 8
    .param p1, "subId"    # I

    .line 2702
    iget-object v0, p0, Landroid/telephony/SmsManager$7;->val$m:Landroid/telephony/MmsManager;

    iget-object v2, p0, Landroid/telephony/SmsManager$7;->val$contentUri:Landroid/net/Uri;

    iget-object v3, p0, Landroid/telephony/SmsManager$7;->val$locationUrl:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/SmsManager$7;->val$configOverrides:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/telephony/SmsManager$7;->val$sentIntent:Landroid/app/PendingIntent;

    iget-wide v6, p0, Landroid/telephony/SmsManager$7;->val$messageId:J

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/MmsManager;->sendMultimediaMessage(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    .line 2704
    return-void
.end method
