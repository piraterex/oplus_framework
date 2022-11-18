.class public final enum Lcom/android/internal/telephony/IccCardConstants$State;
.super Ljava/lang/Enum;
.source "IccCardConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/IccCardConstants$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum blacklist CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum blacklist LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist READY:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 74
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 76
    new-instance v1, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v3, "ABSENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 78
    new-instance v3, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v5, "PIN_REQUIRED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 80
    new-instance v5, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v7, "PUK_REQUIRED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 82
    new-instance v7, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v9, "NETWORK_LOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 84
    new-instance v9, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v11, "READY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 86
    new-instance v11, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v13, "NOT_READY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 88
    new-instance v13, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v15, "PERM_DISABLED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 90
    new-instance v15, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v14, "CARD_IO_ERROR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 92
    new-instance v14, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v12, "CARD_RESTRICTED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 93
    new-instance v12, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v10, "LOADED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 71
    const/16 v10, 0xb

    new-array v10, v10, [Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->$VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 107
    packed-switch p0, :pswitch_data_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 118
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 117
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 116
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 115
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 114
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 113
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 112
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 111
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 110
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 109
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 108
    :pswitch_a
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 71
    const-class v0, Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method public static greylist values()[Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .line 71
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->$VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccCardConstants$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method


# virtual methods
.method public blacklist iccCardExist()Z
    .locals 1

    .line 100
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

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

.method public blacklist isPinLocked()Z
    .locals 1

    .line 96
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

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
