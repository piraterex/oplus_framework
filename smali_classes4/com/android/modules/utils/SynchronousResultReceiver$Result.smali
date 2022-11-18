.class public Lcom/android/modules/utils/SynchronousResultReceiver$Result;
.super Ljava/lang/Object;
.source "SynchronousResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/modules/utils/SynchronousResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/modules/utils/SynchronousResultReceiver$Result<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mException:Ljava/lang/RuntimeException;

.field private final blacklist mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 140
    new-instance v0, Lcom/android/modules/utils/SynchronousResultReceiver$Result$1;

    invoke-direct {v0}, Lcom/android/modules/utils/SynchronousResultReceiver$Result$1;-><init>()V

    sput-object v0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 135
    .local p0, "this":Lcom/android/modules/utils/SynchronousResultReceiver$Result;, "Lcom/android/modules/utils/SynchronousResultReceiver$Result<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mObject:Ljava/lang/Object;

    .line 137
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mException:Ljava/lang/RuntimeException;

    .line 138
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/modules/utils/SynchronousResultReceiver$Result-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/android/modules/utils/SynchronousResultReceiver$Result;, "Lcom/android/modules/utils/SynchronousResultReceiver$Result<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mObject:Ljava/lang/Object;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mException:Ljava/lang/RuntimeException;

    .line 110
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/RuntimeException;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/RuntimeException;

    .line 102
    .local p0, "this":Lcom/android/modules/utils/SynchronousResultReceiver$Result;, "Lcom/android/modules/utils/SynchronousResultReceiver$Result<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mObject:Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mException:Ljava/lang/RuntimeException;

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 127
    .local p0, "this":Lcom/android/modules/utils/SynchronousResultReceiver$Result;, "Lcom/android/modules/utils/SynchronousResultReceiver$Result<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/android/modules/utils/SynchronousResultReceiver$Result;, "Lcom/android/modules/utils/SynchronousResultReceiver$Result<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mException:Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 121
    return-object p1

    .line 123
    :cond_0
    return-object v0

    .line 118
    :cond_1
    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 131
    .local p0, "this":Lcom/android/modules/utils/SynchronousResultReceiver$Result;, "Lcom/android/modules/utils/SynchronousResultReceiver$Result<TT;>;"
    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mObject:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mException:Ljava/lang/RuntimeException;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 133
    return-void
.end method
