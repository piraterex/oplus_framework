.class public final enum Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;
.super Ljava/lang/Enum;
.source "ProgramFragmentFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnvMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

.field public static final enum greylist-max-o DECAL:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

.field public static final enum greylist MODULATE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

.field public static final enum greylist REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;


# instance fields
.field greylist-max-o mID:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    .line 108
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    const-string v1, "REPLACE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    .line 113
    new-instance v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    const-string v4, "MODULATE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    .line 118
    new-instance v4, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    const-string v6, "DECAL"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->DECAL:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    .line 104
    new-array v6, v7, [Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->$VALUES:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

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

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput p3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->mID:I

    .line 123
    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 104
    const-class v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;
    .locals 1

    .line 104
    sget-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->$VALUES:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    invoke-virtual {v0}, [Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    return-object v0
.end method
