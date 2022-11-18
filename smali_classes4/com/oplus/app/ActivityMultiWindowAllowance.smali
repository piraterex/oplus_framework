.class public Lcom/oplus/app/ActivityMultiWindowAllowance;
.super Ljava/lang/Object;
.source "ActivityMultiWindowAllowance.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/app/ActivityMultiWindowAllowance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist allowSelfSplitToSplitScreen:Z

.field public blacklist allowSwitchToFullScreen:Z

.field public blacklist allowSwitchToSplitScreen:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/oplus/app/ActivityMultiWindowAllowance$1;

    invoke-direct {v0}, Lcom/oplus/app/ActivityMultiWindowAllowance$1;-><init>()V

    sput-object v0, Lcom/oplus/app/ActivityMultiWindowAllowance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-direct {p0, p1}, Lcom/oplus/app/ActivityMultiWindowAllowance;->readFromParcel(Landroid/os/Parcel;)V

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/oplus/app/ActivityMultiWindowAllowance-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/app/ActivityMultiWindowAllowance;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSelfSplitToSplitScreen:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSwitchToSplitScreen:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSwitchToFullScreen:Z

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 75
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 76
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/oplus/app/ActivityMultiWindowAllowance;

    .line 78
    .local v2, "that":Lcom/oplus/app/ActivityMultiWindowAllowance;
    iget-boolean v3, p0, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSelfSplitToSplitScreen:Z

    iget-boolean v4, v2, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSelfSplitToSplitScreen:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSwitchToSplitScreen:Z

    iget-boolean v4, v2, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSwitchToSplitScreen:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSwitchToFullScreen:Z

    iget-boolean v4, v2, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSwitchToFullScreen:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 76
    .end local v2    # "that":Lcom/oplus/app/ActivityMultiWindowAllowance;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSelfSplitToSplitScreen:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSwitchToSplitScreen:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSwitchToFullScreen:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 95
    iget-boolean v0, p0, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSelfSplitToSplitScreen:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 96
    iget-boolean v0, p0, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSwitchToSplitScreen:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 97
    iget-boolean v0, p0, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSwitchToFullScreen:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 98
    return-void
.end method
