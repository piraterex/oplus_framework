.class public final enum Landroid/renderscript/RenderScript$Priority;
.super Ljava/lang/Enum;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/RenderScript$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/renderscript/RenderScript$Priority;

.field public static final enum whitelist LOW:Landroid/renderscript/RenderScript$Priority;

.field public static final enum whitelist NORMAL:Landroid/renderscript/RenderScript$Priority;


# instance fields
.field greylist-max-o mID:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 1226
    new-instance v0, Landroid/renderscript/RenderScript$Priority;

    const-string v1, "LOW"

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/RenderScript$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    .line 1227
    new-instance v1, Landroid/renderscript/RenderScript$Priority;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    const/4 v5, -0x8

    invoke-direct {v1, v3, v4, v5}, Landroid/renderscript/RenderScript$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/renderscript/RenderScript$Priority;->NORMAL:Landroid/renderscript/RenderScript$Priority;

    .line 1223
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/renderscript/RenderScript$Priority;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroid/renderscript/RenderScript$Priority;->$VALUES:[Landroid/renderscript/RenderScript$Priority;

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

    .line 1230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1231
    iput p3, p0, Landroid/renderscript/RenderScript$Priority;->mID:I

    .line 1232
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/renderscript/RenderScript$Priority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1223
    const-class v0, Landroid/renderscript/RenderScript$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/RenderScript$Priority;

    return-object v0
.end method

.method public static whitelist values()[Landroid/renderscript/RenderScript$Priority;
    .locals 1

    .line 1223
    sget-object v0, Landroid/renderscript/RenderScript$Priority;->$VALUES:[Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v0}, [Landroid/renderscript/RenderScript$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/RenderScript$Priority;

    return-object v0
.end method
