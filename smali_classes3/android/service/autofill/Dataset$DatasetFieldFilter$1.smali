.class Landroid/service/autofill/Dataset$DatasetFieldFilter$1;
.super Ljava/lang/Object;
.source "Dataset.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Dataset$DatasetFieldFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/Dataset$DatasetFieldFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1183
    new-instance v0, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    const-class v1, Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/util/regex/Pattern;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    invoke-direct {v0, v1}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1179
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$DatasetFieldFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .locals 1
    .param p1, "size"    # I

    .line 1188
    new-array v0, p1, [Landroid/service/autofill/Dataset$DatasetFieldFilter;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1179
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$DatasetFieldFilter$1;->newArray(I)[Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object p1

    return-object p1
.end method
