.class public final enum Landroid/widget/ImageView$ScaleType;
.super Ljava/lang/Enum;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/widget/ImageView$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/widget/ImageView$ScaleType;

.field public static final enum whitelist CENTER:Landroid/widget/ImageView$ScaleType;

.field public static final enum whitelist CENTER_CROP:Landroid/widget/ImageView$ScaleType;

.field public static final enum whitelist CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

.field public static final enum whitelist FIT_CENTER:Landroid/widget/ImageView$ScaleType;

.field public static final enum whitelist FIT_END:Landroid/widget/ImageView$ScaleType;

.field public static final enum whitelist FIT_START:Landroid/widget/ImageView$ScaleType;

.field public static final enum whitelist FIT_XY:Landroid/widget/ImageView$ScaleType;

.field public static final enum whitelist MATRIX:Landroid/widget/ImageView$ScaleType;


# instance fields
.field final greylist-max-o nativeInt:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 827
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string v1, "MATRIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 832
    new-instance v1, Landroid/widget/ImageView$ScaleType;

    const-string v3, "FIT_XY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 837
    new-instance v3, Landroid/widget/ImageView$ScaleType;

    const-string v5, "FIT_START"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 843
    new-instance v5, Landroid/widget/ImageView$ScaleType;

    const-string v7, "FIT_CENTER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 848
    new-instance v7, Landroid/widget/ImageView$ScaleType;

    const-string v9, "FIT_END"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 853
    new-instance v9, Landroid/widget/ImageView$ScaleType;

    const-string v11, "CENTER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 861
    new-instance v11, Landroid/widget/ImageView$ScaleType;

    const-string v13, "CENTER_CROP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 869
    new-instance v13, Landroid/widget/ImageView$ScaleType;

    const-string v15, "CENTER_INSIDE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 821
    const/16 v15, 0x8

    new-array v15, v15, [Landroid/widget/ImageView$ScaleType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Landroid/widget/ImageView$ScaleType;->$VALUES:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "ni"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 871
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 872
    iput p3, p0, Landroid/widget/ImageView$ScaleType;->nativeInt:I

    .line 873
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 821
    const-class v0, Landroid/widget/ImageView$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public static whitelist values()[Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 821
    sget-object v0, Landroid/widget/ImageView$ScaleType;->$VALUES:[Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, [Landroid/widget/ImageView$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method
