.class public final enum Landroid/telephony/TelephonyManager$MultiSimVariants;
.super Ljava/lang/Enum;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MultiSimVariants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/telephony/TelephonyManager$MultiSimVariants;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/telephony/TelephonyManager$MultiSimVariants;

.field public static final enum greylist DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

.field public static final enum greylist DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

.field public static final enum greylist TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

.field public static final enum greylist UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 425
    new-instance v0, Landroid/telephony/TelephonyManager$MultiSimVariants;

    const-string v1, "DSDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/telephony/TelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 427
    new-instance v1, Landroid/telephony/TelephonyManager$MultiSimVariants;

    const-string v3, "DSDA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/telephony/TelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 429
    new-instance v3, Landroid/telephony/TelephonyManager$MultiSimVariants;

    const-string v5, "TSTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/telephony/TelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 431
    new-instance v5, Landroid/telephony/TelephonyManager$MultiSimVariants;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/telephony/TelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 422
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/telephony/TelephonyManager$MultiSimVariants;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/telephony/TelephonyManager$MultiSimVariants;->$VALUES:[Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 424
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/telephony/TelephonyManager$MultiSimVariants;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 422
    const-class v0, Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v0
.end method

.method public static greylist values()[Landroid/telephony/TelephonyManager$MultiSimVariants;
    .locals 1

    .line 422
    sget-object v0, Landroid/telephony/TelephonyManager$MultiSimVariants;->$VALUES:[Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v0}, [Landroid/telephony/TelephonyManager$MultiSimVariants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v0
.end method
