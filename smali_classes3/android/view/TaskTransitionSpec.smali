.class public Landroid/view/TaskTransitionSpec;
.super Ljava/lang/Object;
.source "TaskTransitionSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/TaskTransitionSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist animationBoundInsets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist backgroundColor:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Landroid/view/TaskTransitionSpec$1;

    invoke-direct {v0}, Landroid/view/TaskTransitionSpec$1;-><init>()V

    sput-object v0, Landroid/view/TaskTransitionSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/Set;)V
    .locals 0
    .param p1, "backgroundColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p2, "animationBoundInsets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/view/TaskTransitionSpec;->backgroundColor:I

    .line 54
    iput-object p2, p0, Landroid/view/TaskTransitionSpec;->animationBoundInsets:Ljava/util/Set;

    .line 55
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/TaskTransitionSpec;->backgroundColor:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, "animationBoundInsetsSize":I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/view/TaskTransitionSpec;->animationBoundInsets:Ljava/util/Set;

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 63
    iget-object v2, p0, Landroid/view/TaskTransitionSpec;->animationBoundInsets:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget v0, p0, Landroid/view/TaskTransitionSpec;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Landroid/view/TaskTransitionSpec;->animationBoundInsets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Landroid/view/TaskTransitionSpec;->animationBoundInsets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 78
    .local v1, "insetType":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    .end local v1    # "insetType":I
    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method
