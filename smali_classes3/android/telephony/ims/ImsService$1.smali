.class Landroid/telephony/ims/ImsService$1;
.super Ljava/util/HashMap;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 167
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 168
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "EMERGENCY_OVER_MMTEL"

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ims/ImsService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "SIP_DELEGATE_CREATION"

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ims/ImsService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method
