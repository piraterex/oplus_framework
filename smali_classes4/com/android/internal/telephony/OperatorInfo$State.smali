.class public final enum Lcom/android/internal/telephony/OperatorInfo$State;
.super Ljava/lang/Enum;
.source "OperatorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/OperatorInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum greylist-max-o AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum greylist CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum greylist FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum greylist-max-o UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 51
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 52
    new-instance v1, Lcom/android/internal/telephony/OperatorInfo$State;

    const-string v3, "AVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 53
    new-instance v3, Lcom/android/internal/telephony/OperatorInfo$State;

    const-string v5, "CURRENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 55
    new-instance v5, Lcom/android/internal/telephony/OperatorInfo$State;

    const-string v7, "FORBIDDEN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 50
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/internal/telephony/OperatorInfo$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/internal/telephony/OperatorInfo$State;->$VALUES:[Lcom/android/internal/telephony/OperatorInfo$State;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 50
    const-class v0, Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0
.end method

.method public static greylist-max-o values()[Lcom/android/internal/telephony/OperatorInfo$State;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->$VALUES:[Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/OperatorInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0
.end method
