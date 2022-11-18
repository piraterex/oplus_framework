.class public Lcom/android/internal/telephony/SmsHeader$MiscElt;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiscElt"
.end annotation


# instance fields
.field public greylist-max-o data:[B

.field public greylist-max-o id:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 181
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 182
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 183
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 184
    .local v2, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    iget v4, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object v4, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 185
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 184
    :goto_0
    return v0

    .line 182
    .end local v2    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 190
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 191
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 192
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
