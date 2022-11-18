.class public final Landroid/internal/modules/utils/build/UnboundedSdkLevel;
.super Ljava/lang/Object;
.source "UnboundedSdkLevel.java"


# static fields
.field private static final blacklist PREVIOUS_CODENAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sInstance:Landroid/internal/modules/utils/build/UnboundedSdkLevel;


# instance fields
.field private final blacklist mCodename:Ljava/lang/String;

.field private final blacklist mIsReleaseBuild:Z

.field private final blacklist mKnownCodenames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSdkInt:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->PREVIOUS_CODENAMES:Landroid/util/SparseArray;

    .line 53
    const-string v1, "Q"

    invoke-static {v1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    const-string v2, "R"

    invoke-static {v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    const-string v3, "S"

    invoke-static {v1, v2, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    const/16 v5, 0x1f

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    const-string v4, "Sv2"

    invoke-static {v1, v2, v3, v4}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    new-instance v1, Landroid/internal/modules/utils/build/UnboundedSdkLevel;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 63
    invoke-static {}, Landroid/internal/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    sget-object v0, Landroid/os/Build$VERSION;->KNOWN_CODENAMES:Ljava/util/Set;

    goto :goto_0

    .line 65
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_0
    invoke-direct {v1, v2, v3, v0}, Landroid/internal/modules/utils/build/UnboundedSdkLevel;-><init>(ILjava/lang/String;Ljava/util/Set;)V

    sput-object v1, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->sInstance:Landroid/internal/modules/utils/build/UnboundedSdkLevel;

    .line 59
    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1, "sdkInt"    # I
    .param p2, "codename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p3, "knownCodenames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->mSdkInt:I

    .line 75
    iput-object p2, p0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->mCodename:Ljava/lang/String;

    .line 76
    const-string v0, "REL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->mIsReleaseBuild:Z

    .line 77
    iput-object p3, p0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    .line 78
    return-void
.end method

.method public static blacklist isAtLeast(Ljava/lang/String;)Z
    .locals 1
    .param p0, "version"    # Ljava/lang/String;

    .line 40
    sget-object v0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->sInstance:Landroid/internal/modules/utils/build/UnboundedSdkLevel;

    invoke-virtual {v0, p0}, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->isAtLeastInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAtMost(Ljava/lang/String;)Z
    .locals 1
    .param p0, "version"    # Ljava/lang/String;

    .line 47
    sget-object v0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->sInstance:Landroid/internal/modules/utils/build/UnboundedSdkLevel;

    invoke-virtual {v0, p0}, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->isAtMostInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist isCodename(Ljava/lang/String;)Z
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    return v0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method blacklist isAtLeastInternal(Ljava/lang/String;)Z
    .locals 4
    .param p1, "version"    # Ljava/lang/String;

    .line 82
    invoke-virtual {p0, p1}, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->removeFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-boolean v0, p0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->mIsReleaseBuild:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 84
    invoke-direct {p0, p1}, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    return v2

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Artifact with a known codename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be recompiled with a finalized integer version."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    iget v0, p0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->mSdkInt:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v0, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    .line 95
    :cond_3
    invoke-direct {p0, p1}, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 100
    :cond_4
    iget v0, p0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->mSdkInt:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v0, v3, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1
.end method

.method blacklist isAtMostInternal(Ljava/lang/String;)Z
    .locals 4
    .param p1, "version"    # Ljava/lang/String;

    .line 105
    invoke-virtual {p0, p1}, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->removeFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    iget-boolean v0, p0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->mIsReleaseBuild:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 107
    invoke-direct {p0, p1}, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    return v2

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Artifact with a known codename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be recompiled with a finalized integer version."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    iget v0, p0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->mSdkInt:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 118
    :cond_3
    invoke-direct {p0, p1}, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    iget-object v0, p0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->mCodename:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1

    .line 129
    :cond_6
    iget v0, p0, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->mSdkInt:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v0, v3, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method blacklist removeFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1}, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 140
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 141
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 144
    .end local v0    # "index":I
    :cond_0
    return-object p1
.end method
