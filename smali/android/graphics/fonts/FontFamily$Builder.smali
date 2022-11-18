.class public final Landroid/graphics/fonts/FontFamily$Builder;
.super Ljava/lang/Object;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist sFamilyRegistory:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mFonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStyles:Landroid/util/SparseIntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 67
    const-class v0, Landroid/graphics/fonts/FontFamily;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 69
    invoke-static {}, Landroid/graphics/fonts/FontFamily$Builder;->nGetReleaseNativeFamily()J

    move-result-wide v1

    .line 68
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/FontFamily$Builder;->sFamilyRegistory:Llibcore/util/NativeAllocationRegistry;

    .line 67
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/fonts/Font;)V
    .locals 4
    .param p1, "font"    # Landroid/graphics/fonts/Font;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    .line 74
    new-instance v1, Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/fonts/FontFamily$Builder;->mStyles:Landroid/util/SparseIntArray;

    .line 82
    const-string v2, "font can not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {p1}, Landroid/graphics/fonts/FontFamily$Builder;->makeStyleIdentifier(Landroid/graphics/fonts/Font;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 84
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method private static blacklist makeStyleIdentifier(Landroid/graphics/fonts/Font;)I
    .locals 2
    .param p0, "font"    # Landroid/graphics/fonts/Font;

    .line 134
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private static native blacklist nAddFont(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nBuild(JLjava/lang/String;IZ)J
.end method

.method private static native blacklist nGetReleaseNativeFamily()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nInitBuilder()J
.end method


# virtual methods
.method public whitelist addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    .locals 4
    .param p1, "font"    # Landroid/graphics/fonts/Font;

    .line 102
    const-string v0, "font can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p1}, Landroid/graphics/fonts/FontFamily$Builder;->makeStyleIdentifier(Landroid/graphics/fonts/Font;)I

    move-result v0

    .line 104
    .local v0, "key":I
    iget-object v1, p0, Landroid/graphics/fonts/FontFamily$Builder;->mStyles:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 107
    iget-object v1, p0, Landroid/graphics/fonts/FontFamily$Builder;->mStyles:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 108
    iget-object v1, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    return-object p0

    .line 105
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist build()Landroid/graphics/fonts/FontFamily;
    .locals 3

    .line 117
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/fonts/FontFamily$Builder;->build(Ljava/lang/String;IZ)Landroid/graphics/fonts/FontFamily;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build(Ljava/lang/String;IZ)Landroid/graphics/fonts/FontFamily;
    .locals 6
    .param p1, "langTags"    # Ljava/lang/String;
    .param p2, "variant"    # I
    .param p3, "isCustomFallback"    # Z

    .line 123
    invoke-static {}, Landroid/graphics/fonts/FontFamily$Builder;->nInitBuilder()J

    move-result-wide v0

    .line 124
    .local v0, "builderPtr":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 125
    iget-object v3, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/Font;

    invoke-virtual {v3}, Landroid/graphics/fonts/Font;->getNativePtr()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Landroid/graphics/fonts/FontFamily$Builder;->nAddFont(JJ)V

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/fonts/FontFamily$Builder;->nBuild(JLjava/lang/String;IZ)J

    move-result-wide v2

    .line 128
    .local v2, "ptr":J
    new-instance v4, Landroid/graphics/fonts/FontFamily;

    invoke-direct {v4, v2, v3}, Landroid/graphics/fonts/FontFamily;-><init>(J)V

    .line 129
    .local v4, "family":Landroid/graphics/fonts/FontFamily;
    sget-object v5, Landroid/graphics/fonts/FontFamily$Builder;->sFamilyRegistory:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v5, v4, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 130
    return-object v4
.end method
