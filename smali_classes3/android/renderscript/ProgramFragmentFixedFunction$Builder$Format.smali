.class public final enum Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;
.super Ljava/lang/Enum;
.source "ProgramFragmentFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

.field public static final enum greylist ALPHA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

.field public static final enum greylist-max-o LUMINANCE_ALPHA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

.field public static final enum greylist RGB:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

.field public static final enum greylist RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;


# instance fields
.field greylist-max-o mID:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 10

    .line 136
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    const-string v1, "ALPHA"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ALPHA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    .line 141
    new-instance v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    const-string v4, "LUMINANCE_ALPHA"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->LUMINANCE_ALPHA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    .line 145
    new-instance v4, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    const-string v6, "RGB"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGB:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    .line 150
    new-instance v6, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    const-string v8, "RGBA"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    .line 132
    new-array v8, v9, [Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->$VALUES:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    iput p3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->mID:I

    .line 156
    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 132
    const-class v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;
    .locals 1

    .line 132
    sget-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->$VALUES:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v0}, [Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    return-object v0
.end method
