.class public final enum Landroid/graphics/drawable/GradientDrawable$Orientation;
.super Ljava/lang/Enum;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/drawable/GradientDrawable$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum whitelist BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum whitelist BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum whitelist BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum whitelist LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum whitelist RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum whitelist TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum whitelist TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum whitelist TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 217
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "TOP_BOTTOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 219
    new-instance v1, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v3, "TR_BL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 221
    new-instance v3, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v5, "RIGHT_LEFT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 223
    new-instance v5, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v7, "BR_TL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 225
    new-instance v7, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v9, "BOTTOM_TOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 227
    new-instance v9, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v11, "BL_TR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 229
    new-instance v11, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v13, "LEFT_RIGHT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 231
    new-instance v13, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v15, "TL_BR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 215
    const/16 v15, 0x8

    new-array v15, v15, [Landroid/graphics/drawable/GradientDrawable$Orientation;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Landroid/graphics/drawable/GradientDrawable$Orientation;->$VALUES:[Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 215
    const-class v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1

    .line 215
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->$VALUES:[Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0}, [Landroid/graphics/drawable/GradientDrawable$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method
