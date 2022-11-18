.class public Lcom/android/internal/telephony/SmsHeader$PortAddrs;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PortAddrs"
.end annotation


# instance fields
.field public greylist-max-o areEightBits:Z

.field public greylist destPort:I

.field public greylist origPort:I


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 108
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 109
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 111
    .local v2, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    iget v4, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    iget v4, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    iget-boolean v4, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 109
    .end local v2    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 118
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
