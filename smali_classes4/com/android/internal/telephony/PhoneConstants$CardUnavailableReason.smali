.class public final enum Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;
.super Ljava/lang/Enum;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardUnavailableReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

.field public static final enum blacklist REASON_CARD_REMOVED:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

.field public static final enum blacklist REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

.field public static final enum blacklist REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 207
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    const-string v1, "REASON_CARD_REMOVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->REASON_CARD_REMOVED:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    .line 208
    new-instance v1, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    const-string v3, "REASON_RADIO_UNAVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    .line 209
    new-instance v3, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    const-string v5, "REASON_SIM_REFRESH_RESET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    .line 206
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 206
    const-class v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;
    .locals 1

    .line 206
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    return-object v0
.end method
