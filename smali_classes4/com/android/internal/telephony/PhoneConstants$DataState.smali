.class public final enum Lcom/android/internal/telephony/PhoneConstants$DataState;
.super Ljava/lang/Enum;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/PhoneConstants$DataState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum greylist CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum greylist CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum greylist DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum blacklist DISCONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum greylist SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 60
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 62
    new-instance v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v3, "CONNECTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 64
    new-instance v3, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v5, "DISCONNECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 66
    new-instance v5, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v7, "SUSPENDED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 68
    new-instance v7, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v9, "DISCONNECTING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 57
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/internal/telephony/PhoneConstants$DataState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/android/internal/telephony/PhoneConstants$DataState;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 57
    const-class v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0
.end method

.method public static greylist values()[Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .line 57
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/PhoneConstants$DataState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0
.end method
