.class public final Landroid/os/WorkSource$WorkChain;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/WorkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WorkChain"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mSize:I

.field private greylist-max-o mTags:[Ljava/lang/String;

.field private greylist-max-o mUids:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1106
    new-instance v0, Landroid/os/WorkSource$WorkChain$1;

    invoke-direct {v0}, Landroid/os/WorkSource$WorkChain$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource$WorkChain;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    .line 966
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    .line 967
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    .line 968
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    .line 980
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    .line 981
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    .line 982
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/WorkSource$WorkChain-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/WorkSource$WorkChain;)V
    .locals 1
    .param p1, "other"    # Landroid/os/WorkSource$WorkChain;

    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 973
    iget v0, p1, Landroid/os/WorkSource$WorkChain;->mSize:I

    iput v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    .line 974
    iget-object v0, p1, Landroid/os/WorkSource$WorkChain;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    .line 975
    iget-object v0, p1, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    .line 976
    return-void
.end method

.method private greylist-max-o resizeArrays()V
    .locals 6

    .line 1044
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    mul-int/lit8 v1, v0, 0x2

    .line 1045
    .local v1, "newSize":I
    new-array v2, v1, [I

    .line 1046
    .local v2, "uids":[I
    new-array v3, v1, [Ljava/lang/String;

    .line 1048
    .local v3, "tags":[Ljava/lang/String;
    iget-object v4, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1049
    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    iget v4, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1051
    iput-object v2, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    .line 1052
    iput-object v3, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    .line 1053
    return-void
.end method


# virtual methods
.method public whitelist addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 989
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    iget-object v1, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 990
    invoke-direct {p0}, Landroid/os/WorkSource$WorkChain;->resizeArrays()V

    .line 993
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    iget v1, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    aput p1, v0, v1

    .line 994
    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    aput-object p2, v0, v1

    .line 995
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    .line 997
    return-object p0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 1096
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1083
    instance-of v0, p1, Landroid/os/WorkSource$WorkChain;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1084
    move-object v0, p1

    check-cast v0, Landroid/os/WorkSource$WorkChain;

    .line 1086
    .local v0, "other":Landroid/os/WorkSource$WorkChain;
    iget v2, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    iget v3, v0, Landroid/os/WorkSource$WorkChain;->mSize:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    iget-object v3, v0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    .line 1087
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    iget-object v3, v0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    .line 1088
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1086
    :goto_0
    return v1

    .line 1091
    .end local v0    # "other":Landroid/os/WorkSource$WorkChain;
    :cond_1
    return v1
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .locals 2

    .line 1013
    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getAttributionUid()I
    .locals 2

    .line 1005
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public greylist-max-o getSize()I
    .locals 1

    .line 1040
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    return v0
.end method

.method public greylist-max-o getTags()[Ljava/lang/String;
    .locals 4

    .line 1032
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    new-array v1, v0, [Ljava/lang/String;

    .line 1033
    .local v1, "tags":[Ljava/lang/String;
    iget-object v2, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1034
    return-object v1
.end method

.method public greylist-max-o getUids()[I
    .locals 4

    .line 1024
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    new-array v1, v0, [I

    .line 1025
    .local v1, "uids":[I
    iget-object v2, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1026
    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 1078
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    iget-object v1, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WorkChain{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1059
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    if-ge v1, v2, :cond_2

    .line 1060
    const-string v2, ", "

    if-eqz v1, :cond_0

    .line 1061
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    :cond_0
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    iget-object v3, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1065
    iget-object v3, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 1066
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    iget-object v2, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1072
    .end local v1    # "i":I
    :cond_2
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1101
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1103
    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1104
    return-void
.end method
