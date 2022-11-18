.class public final enum Landroid/telephony/SmsMessage$MessageClass;
.super Ljava/lang/Enum;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/telephony/SmsMessage$MessageClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/telephony/SmsMessage$MessageClass;

.field public static final enum whitelist CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

.field public static final enum whitelist CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

.field public static final enum whitelist CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

.field public static final enum whitelist CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

.field public static final enum whitelist UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 63
    new-instance v0, Landroid/telephony/SmsMessage$MessageClass;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/telephony/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    new-instance v1, Landroid/telephony/SmsMessage$MessageClass;

    const-string v3, "CLASS_0"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/telephony/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    new-instance v3, Landroid/telephony/SmsMessage$MessageClass;

    const-string v5, "CLASS_1"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/telephony/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    new-instance v5, Landroid/telephony/SmsMessage$MessageClass;

    const-string v7, "CLASS_2"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/telephony/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    new-instance v7, Landroid/telephony/SmsMessage$MessageClass;

    const-string v9, "CLASS_3"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/telephony/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    .line 62
    const/4 v9, 0x5

    new-array v9, v9, [Landroid/telephony/SmsMessage$MessageClass;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Landroid/telephony/SmsMessage$MessageClass;->$VALUES:[Landroid/telephony/SmsMessage$MessageClass;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/telephony/SmsMessage$MessageClass;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 62
    const-class v0, Landroid/telephony/SmsMessage$MessageClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public static whitelist values()[Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .line 62
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->$VALUES:[Landroid/telephony/SmsMessage$MessageClass;

    invoke-virtual {v0}, [Landroid/telephony/SmsMessage$MessageClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method
