.class public final Landroid/telephony/AccessNetworkConstants$AccessNetworkType;
.super Ljava/lang/Object;
.source "AccessNetworkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/AccessNetworkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessNetworkType"
.end annotation


# static fields
.field public static final whitelist CDMA2000:I = 0x4

.field public static final whitelist EUTRAN:I = 0x3

.field public static final whitelist GERAN:I = 0x1

.field public static final whitelist IWLAN:I = 0x5

.field public static final whitelist NGRAN:I = 0x6

.field public static final whitelist UNKNOWN:I = 0x0

.field public static final whitelist UTRAN:I = 0x2


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertRanToAnt(I)I
    .locals 1
    .param p0, "ran"    # I

    .line 138
    packed-switch p0, :pswitch_data_0

    .line 151
    const/4 v0, 0x0

    return v0

    .line 148
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 146
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 144
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 142
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 140
    :pswitch_4
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist fromString(Ljava/lang/String;)I
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "EUTRAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_1
    const-string v1, "UTRAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_2
    const-string v1, "NGRAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "IWLAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v1, "GERAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_5
    const-string v1, "CDMA2000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 126
    invoke-static {}, Landroid/telephony/AccessNetworkConstants;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid access network type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v2

    .line 124
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 123
    :pswitch_1
    return v3

    .line 122
    :pswitch_2
    return v4

    .line 121
    :pswitch_3
    return v5

    .line 120
    :pswitch_4
    return v6

    .line 119
    :pswitch_5
    return v7

    :sswitch_data_0
    .sparse-switch
        -0x3bd8f00d -> :sswitch_5
        0x4091e61 -> :sswitch_4
        0x42d658b -> :sswitch_3
        0x46caba6 -> :sswitch_2
        0x4d53900 -> :sswitch_1
        0x7a939bdb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 104
    packed-switch p0, :pswitch_data_0

    .line 112
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :pswitch_0
    const-string v0, "NGRAN"

    return-object v0

    .line 110
    :pswitch_1
    const-string v0, "IWLAN"

    return-object v0

    .line 109
    :pswitch_2
    const-string v0, "CDMA2000"

    return-object v0

    .line 108
    :pswitch_3
    const-string v0, "EUTRAN"

    return-object v0

    .line 107
    :pswitch_4
    const-string v0, "UTRAN"

    return-object v0

    .line 106
    :pswitch_5
    const-string v0, "GERAN"

    return-object v0

    .line 105
    :pswitch_6
    const-string v0, "UNKNOWN"

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
