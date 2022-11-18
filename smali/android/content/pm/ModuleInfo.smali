.class public final Landroid/content/pm/ModuleInfo;
.super Ljava/lang/Object;
.source "ModuleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mApexModuleName:Ljava/lang/String;

.field private blacklist mHidden:Z

.field private blacklist mName:Ljava/lang/CharSequence;

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 159
    new-instance v0, Landroid/content/pm/ModuleInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ModuleInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ModuleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ModuleInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/ModuleInfo;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-object v0, p1, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    .line 61
    iget-object v0, p1, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    .line 62
    iget-boolean v0, p1, Landroid/content/pm/ModuleInfo;->mHidden:Z

    iput-boolean v0, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    .line 63
    iget-object v0, p1, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    .line 157
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/ModuleInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/ModuleInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 134
    instance-of v0, p1, Landroid/content/pm/ModuleInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 135
    return v1

    .line 137
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ModuleInfo;

    .line 138
    .local v0, "other":Landroid/content/pm/ModuleInfo;
    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    .line 139
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    .line 140
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    iget-boolean v3, v0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 138
    :goto_0
    return v1
.end method

.method public blacklist getApexModuleName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .locals 1

    .line 74
    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 126
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 127
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 128
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 129
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    return v0
.end method

.method public whitelist isHidden()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    return v0
.end method

.method public blacklist setApexModuleName(Ljava/lang/String;)Landroid/content/pm/ModuleInfo;
    .locals 0
    .param p1, "apexModuleName"    # Ljava/lang/String;

    .line 101
    iput-object p1, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public blacklist setHidden(Z)Landroid/content/pm/ModuleInfo;
    .locals 0
    .param p1, "hidden"    # Z

    .line 90
    iput-boolean p1, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    .line 91
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/CharSequence;)Landroid/content/pm/ModuleInfo;
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 68
    iput-object p1, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    .line 69
    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Landroid/content/pm/ModuleInfo;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 146
    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-boolean v0, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 149
    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    return-void
.end method
