.class public Landroid/view/InsetsVisibilities;
.super Ljava/lang/Object;
.source "InsetsVisibilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsVisibilities;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist INVISIBLE:I = -0x1

.field private static final blacklist UNSPECIFIED:I = 0x0

.field private static final blacklist VISIBLE:I = 0x1


# instance fields
.field private final blacklist mVisibilities:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Landroid/view/InsetsVisibilities$1;

    invoke-direct {v0}, Landroid/view/InsetsVisibilities$1;-><init>()V

    sput-object v0, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x18

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x18

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsVisibilities;)V
    .locals 1
    .param p1, "other"    # Landroid/view/InsetsVisibilities;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x18

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    .line 42
    invoke-virtual {p0, p1}, Landroid/view/InsetsVisibilities;->set(Landroid/view/InsetsVisibilities;)V

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 103
    instance-of v0, p1, Landroid/view/InsetsVisibilities;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    move-object v1, p1

    check-cast v1, Landroid/view/InsetsVisibilities;

    iget-object v1, v1, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public blacklist getVisibility(I)Z
    .locals 2
    .param p1, "type"    # I

    .line 77
    iget-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    aget v0, v0, p1

    .line 78
    .local v0, "visibility":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 79
    invoke-static {p1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v1

    goto :goto_0

    .line 80
    :cond_0
    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 78
    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 120
    iget-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 121
    return-void
.end method

.method public blacklist set(Landroid/view/InsetsVisibilities;)V
    .locals 4
    .param p1, "other"    # Landroid/view/InsetsVisibilities;

    .line 55
    iget-object v0, p1, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    iget-object v1, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    const/4 v2, 0x0

    const/16 v3, 0x18

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-void
.end method

.method public blacklist setVisibility(IZ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "visible"    # Z

    .line 66
    iget-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    aput v1, v0, p1

    .line 67
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 85
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 86
    .local v0, "joiner":Ljava/util/StringJoiner;
    const/4 v1, 0x0

    .local v1, "type":I
    :goto_0
    const/16 v2, 0x17

    if-gt v1, v2, :cond_2

    .line 87
    iget-object v2, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    aget v2, v2, v1

    .line 88
    .local v2, "visibility":I
    if-eqz v2, :cond_1

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 90
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const-string/jumbo v4, "visible"

    goto :goto_1

    :cond_0
    const-string/jumbo v4, "invisible"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 86
    .end local v2    # "visibility":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "type":I
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 116
    iget-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 117
    return-void
.end method
