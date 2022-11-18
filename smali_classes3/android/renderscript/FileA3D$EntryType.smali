.class public final enum Landroid/renderscript/FileA3D$EntryType;
.super Ljava/lang/Enum;
.source "FileA3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/FileA3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/FileA3D$EntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/renderscript/FileA3D$EntryType;

.field public static final enum greylist MESH:Landroid/renderscript/FileA3D$EntryType;

.field public static final enum greylist-max-o UNKNOWN:Landroid/renderscript/FileA3D$EntryType;


# instance fields
.field greylist-max-o mID:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 53
    new-instance v0, Landroid/renderscript/FileA3D$EntryType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/FileA3D$EntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/FileA3D$EntryType;->UNKNOWN:Landroid/renderscript/FileA3D$EntryType;

    .line 58
    new-instance v1, Landroid/renderscript/FileA3D$EntryType;

    const-string v3, "MESH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/renderscript/FileA3D$EntryType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/renderscript/FileA3D$EntryType;->MESH:Landroid/renderscript/FileA3D$EntryType;

    .line 47
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/renderscript/FileA3D$EntryType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroid/renderscript/FileA3D$EntryType;->$VALUES:[Landroid/renderscript/FileA3D$EntryType;

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

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Landroid/renderscript/FileA3D$EntryType;->mID:I

    .line 64
    return-void
.end method

.method static greylist-max-o toEntryType(I)Landroid/renderscript/FileA3D$EntryType;
    .locals 1
    .param p0, "intID"    # I

    .line 67
    invoke-static {}, Landroid/renderscript/FileA3D$EntryType;->values()[Landroid/renderscript/FileA3D$EntryType;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/renderscript/FileA3D$EntryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 47
    const-class v0, Landroid/renderscript/FileA3D$EntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/FileA3D$EntryType;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/renderscript/FileA3D$EntryType;
    .locals 1

    .line 47
    sget-object v0, Landroid/renderscript/FileA3D$EntryType;->$VALUES:[Landroid/renderscript/FileA3D$EntryType;

    invoke-virtual {v0}, [Landroid/renderscript/FileA3D$EntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/FileA3D$EntryType;

    return-object v0
.end method
