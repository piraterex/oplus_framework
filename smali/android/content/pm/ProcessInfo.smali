.class public Landroid/content/pm/ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist deniedPermissions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist gwpAsanMode:I

.field public blacklist memtagMode:I

.field public blacklist name:Ljava/lang/String;

.field public blacklist nativeHeapZeroInitialized:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 131
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArraySet;

    .line 132
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    .line 135
    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArraySet;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArraySet;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    .line 193
    :cond_0
    new-instance v0, Landroid/content/pm/ProcessInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ProcessInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ProcessInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/ProcessInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iget-object v0, p1, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    iput-object v0, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 71
    iget v0, p1, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    iput v0, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    .line 72
    iget v0, p1, Landroid/content/pm/ProcessInfo;->memtagMode:I

    iput v0, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    .line 73
    iget v0, p1, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    iput v0, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    .line 74
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 169
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "_name":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    invoke-interface {v2, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 171
    .local v2, "_deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 172
    .local v3, "_gwpAsanMode":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 173
    .local v4, "_memtagMode":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 175
    .local v5, "_nativeHeapZeroInitialized":I
    iput-object v1, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    .line 176
    const-class v6, Landroid/annotation/NonNull;

    const/4 v7, 0x0

    invoke-static {v6, v7, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 178
    iput-object v2, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 179
    iput v3, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    .line 180
    const-class v6, Landroid/content/pm/ApplicationInfo$GwpAsanMode;

    invoke-static {v6, v7, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 182
    iput v4, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    .line 183
    const-class v6, Landroid/content/pm/ApplicationInfo$MemtagMode;

    invoke-static {v6, v7, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 185
    iput v5, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    .line 186
    const-class v6, Landroid/content/pm/ApplicationInfo$NativeHeapZeroInitialized;

    invoke-static {v6, v7, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 190
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/util/ArraySet;III)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "gwpAsanMode"    # I
    .param p4, "memtagMode"    # I
    .param p5, "nativeHeapZeroInitialized"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    .line 112
    .local p2, "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    .line 114
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 116
    iput-object p2, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 117
    iput p3, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    .line 118
    const-class v0, Landroid/content/pm/ApplicationInfo$GwpAsanMode;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 120
    iput p4, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    .line 121
    const-class v0, Landroid/content/pm/ApplicationInfo$MemtagMode;

    invoke-static {v0, v1, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 123
    iput p5, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    .line 124
    const-class v0, Landroid/content/pm/ApplicationInfo$NativeHeapZeroInitialized;

    invoke-static {v0, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 128
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "flg":B
    iget-object v1, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 149
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 150
    iget-object v1, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    sget-object v1, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    iget-object v2, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 152
    iget v1, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v1, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v1, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return-void
.end method
