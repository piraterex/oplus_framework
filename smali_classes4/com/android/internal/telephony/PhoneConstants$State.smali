.class public final enum Lcom/android/internal/telephony/PhoneConstants$State;
.super Ljava/lang/Enum;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/PhoneConstants$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/PhoneConstants$State;

.field public static final enum greylist IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

.field public static final enum greylist OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

.field public static final enum greylist RINGING:Lcom/android/internal/telephony/PhoneConstants$State;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 40
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 41
    new-instance v1, Lcom/android/internal/telephony/PhoneConstants$State;

    const-string v3, "RINGING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/PhoneConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 42
    new-instance v3, Lcom/android/internal/telephony/PhoneConstants$State;

    const-string v5, "OFFHOOK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/PhoneConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 37
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/internal/telephony/PhoneConstants$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$State;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    const-class v0, Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public static greylist values()[Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .line 37
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/PhoneConstants$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method
