.class public final enum Landroid/annotation/SdkConstant$SdkConstantType;
.super Ljava/lang/Enum;
.source "SdkConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/SdkConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkConstantType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/annotation/SdkConstant$SdkConstantType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum greylist-max-o ACTIVITY_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum greylist-max-o BROADCAST_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum greylist-max-o FEATURE:Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum greylist-max-o INTENT_CATEGORY:Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum greylist-max-o SERVICE_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 32
    new-instance v0, Landroid/annotation/SdkConstant$SdkConstantType;

    const-string v1, "ACTIVITY_INTENT_ACTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->ACTIVITY_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    new-instance v1, Landroid/annotation/SdkConstant$SdkConstantType;

    const-string v3, "BROADCAST_INTENT_ACTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/annotation/SdkConstant$SdkConstantType;->BROADCAST_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    new-instance v3, Landroid/annotation/SdkConstant$SdkConstantType;

    const-string v5, "SERVICE_ACTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/annotation/SdkConstant$SdkConstantType;->SERVICE_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    new-instance v5, Landroid/annotation/SdkConstant$SdkConstantType;

    const-string v7, "INTENT_CATEGORY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/annotation/SdkConstant$SdkConstantType;->INTENT_CATEGORY:Landroid/annotation/SdkConstant$SdkConstantType;

    new-instance v7, Landroid/annotation/SdkConstant$SdkConstantType;

    const-string v9, "FEATURE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/annotation/SdkConstant$SdkConstantType;->FEATURE:Landroid/annotation/SdkConstant$SdkConstantType;

    .line 31
    const/4 v9, 0x5

    new-array v9, v9, [Landroid/annotation/SdkConstant$SdkConstantType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Landroid/annotation/SdkConstant$SdkConstantType;->$VALUES:[Landroid/annotation/SdkConstant$SdkConstantType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/annotation/SdkConstant$SdkConstantType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Landroid/annotation/SdkConstant$SdkConstantType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/annotation/SdkConstant$SdkConstantType;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/annotation/SdkConstant$SdkConstantType;
    .locals 1

    .line 31
    sget-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->$VALUES:[Landroid/annotation/SdkConstant$SdkConstantType;

    invoke-virtual {v0}, [Landroid/annotation/SdkConstant$SdkConstantType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/SdkConstant$SdkConstantType;

    return-object v0
.end method
