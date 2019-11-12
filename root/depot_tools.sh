#WORKSPACE=`pwd`/root

cd /root && git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:
export PATH=$PATH:/root/depot_tools
echo $PATH

export GYP_DEFINES="OS=linux"

mkdir -p /root/webrtc-checkout && \
	cd /root/webrtc-checkout && \
	fetch --nohooks webrtc && \
	echo Y | gclient sync --force

#cd /root/webrtc-checkout/src;./build/install-build-deps.sh

